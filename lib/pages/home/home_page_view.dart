import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../entities/weather/weather_entity.dart';
import '../../models/custom_error/custom_error.dart';

import '../../extesions/async_value_xx.dart';
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

class ShowWeather extends ConsumerStatefulWidget {
  const ShowWeather({super.key});

  @override
  ConsumerState<ShowWeather> createState() => _ShowWeatherState();
}

class _ShowWeatherState extends ConsumerState<ShowWeather> {
  List<WeatherEntity?> appWeatherList = [];

  @override
  Widget build(BuildContext context) {
    return widget.weatherState.when(
      skipError: true,
      data: (List<WeatherEntity?> weatherEntities) {
        print('*** in data callback');
        if (weatherEntities.isEmpty) {
          return const SelectCity();
        }
        appWeatherList = weatherEntities.map((e) => e).toList();
        return ListView.builder(
          itemCount: appWeatherList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(appWeatherList[index]?.name ?? 'Unknown City'),
              subtitle: Text('Temperature: ${appWeatherList[index]?.temp}°C'),
              leading: Icon(Icons.wb_sunny),
            );
          },
        );
      },

      /* (CurrentWeather? weather) {
        print('*** in data callback');
        if (weather != null) {
          final WeatherEntity appWeather = WeatherMapper.weatherMapper(weather);
          appWeatherList.add(appWeather);
          return ListView.builder(
            itemCount: appWeatherList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(appWeatherList[index]?.name ?? 'Unknown City'),
                subtitle: Text('Temperature: ${appWeatherList[index]?.temp}°C'),
                leading: Icon(Icons.wb_sunny),
              );
            },
          );
        }
        return const SelectCity();
      }, */
      error: (error, stackTrace) {
        print('*** in data callback');

        if (widget.weatherState.value == null) {
          return const SelectCity();
        }
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              (error as CustomError).errMsg,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
        );
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
