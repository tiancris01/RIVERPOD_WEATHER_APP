import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_riverpod_app/extesions/async_value_xx.dart';
import '../../models/custom_error/custom_error.dart';

import 'providers/weather_provider.dart';
import '../search/search_view.dart';

class HomePageView extends ConsumerStatefulWidget {
  const HomePageView({super.key});

  @override
  ConsumerState<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends ConsumerState<HomePageView> {
  String? _city;
  bool _isLoadingNewCity = false;

  Future<void> _addCity(String city) async {
    setState(() {
      _isLoadingNewCity = true;
    });

    try {
      await ref.read(weatherProvider.notifier).addCity(city);
    } finally {
      setState(() {
        _isLoadingNewCity = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Cities'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              ref.read(weatherProvider.notifier).clearAll();
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              _city = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SearchView();
                  },
                ),
              );
              if (_city != null) {
                _addCity(_city!);
              }
            },
          ),
        ],
      ),
      body: ShowWeather(isLoadingNewCity: _isLoadingNewCity),
    );
  }
}

class ShowWeather extends ConsumerStatefulWidget {
  final bool isLoadingNewCity;

  const ShowWeather({super.key, this.isLoadingNewCity = false});

  @override
  ConsumerState<ShowWeather> createState() => _ShowWeatherState();
}

class _ShowWeatherState extends ConsumerState<ShowWeather> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(weatherProvider);
    print('*** ShowWeather build called');
    print(state.toStr);
    print(state.props);
    return state.when(
      data: (weather) {
        if (weather.isEmpty && !widget.isLoadingNewCity) {
          return const SelectCity();
        }

        // Add loading item if loading new city
        final itemCount = weather.length + (widget.isLoadingNewCity ? 1 : 0);

        return ListView.builder(
          controller: _scrollController,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            // Show loading tile at the end
            if (index == weather.length && widget.isLoadingNewCity) {
              return const LoadingListTile();
            }

            final weatherEntity = weather[index];
            return Dismissible(
              key: Key('${weatherEntity.name}_${weatherEntity.country}_$index'),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                ref.read(weatherProvider.notifier).removeCity(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${weatherEntity.name} removed')),
                );
              },
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              child: ListTile(
                title: Text(weatherEntity.name),
                subtitle: Text('${weatherEntity.temp}°C'),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage(
                    'https://openweathermap.org/img/wn/${weatherEntity.icon}@2x.png',
                  ),
                ),
                trailing: Text(weatherEntity.country),
              ),
            );
          },
        );
      },
      error: (error, stackTrace) {
        if (error is CustomError) {
          return Center(
            child: Text(
              error.errMsg,
              style: TextStyle(color: Colors.red, fontSize: 18.0),
            ),
          );
        }
        return Center(child: Text('An unexpected error occurred'));
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class SelectCity extends StatelessWidget {
  const SelectCity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Select a city', style: TextStyle(fontSize: 20.0)),
    );
  }
}

class LoadingListTile extends StatelessWidget {
  const LoadingListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: SizedBox(
        width: 40,
        height: 40,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
      title: Text('Loading...'),
      subtitle: Text('Fetching weather data'),
    );
  }
}

class EmptyListTile extends StatelessWidget {
  const EmptyListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('No weather data available'),
      subtitle: Text('Please select a city to get the weather information.'),
      leading: Icon(Icons.cancel_presentation),
    );
  }
}
