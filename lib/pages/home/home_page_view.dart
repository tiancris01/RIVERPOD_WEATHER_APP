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

  @override
  Widget build(BuildContext context) {
    // ref.listen<AsyncValue<WeatherEntity?>>>(weatherProvider, (
    //   previous,
    //   next,
    // ) {
    //   next.whenOrNull(
    //     error: (error, stackTrace) {
    //       showDialog(
    //         context: context,
    //         builder: (BuildContext context) {
    //           return AlertDialog(content: Text((error as CustomError).errMsg));
    //         },
    //       );
    //     },
    //   );
    // });

    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        actions: [
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
                ref.read(weatherProvider.notifier).fetchWeather(city: _city!);
              }
            },
          ),
        ],
      ),
      body: ShowWeather(),
    );
  }
}

class ShowWeather extends ConsumerWidget {
  const ShowWeather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(weatherProvider);
    print('*** ShowWeather build called');
    print(state.toStr);
    print(state.props);
    return state.when(
      data: (weather) {
        if (weather == null) {
          return const SelectCity();
        }
        return ListTile(
          title: Text(weather.name),
          subtitle: Text('Temperature: ${weather.temp}°C'),
          leading: Icon(Icons.wb_sunny),
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
