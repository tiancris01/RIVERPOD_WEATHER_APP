import 'package:flutter/material.dart';

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
