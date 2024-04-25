import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Megaman', 'Super Mario', 'Final Fantasy'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 1',
            style: TextStyle(color: Colors.white), textAlign: TextAlign.end),
      ),
      body: ListView(children: [
        ...options
            .map((game) => ListTile(
                  title: Text(game),
                  onTap: () {
                    Navigator.pushNamed(context, 'alert');
                  },
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ))
            .toList(),
        const Divider(),
      ]),
    );
  }
}
