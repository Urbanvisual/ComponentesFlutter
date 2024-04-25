import 'package:fl_components/theme/app_theme.dart';

import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.ad_units_sharp, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'texercise Excepteur employment no escape time who and coaching please nice wishes who cillus who enhanced please our but something please cillus homework criticize be pain who time who only who blacksundefinedo'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.end, //alinear a la derecha d3
              children: [
                TextButton(onPressed: () {}, child: const Text('OK')),
                TextButton(onPressed: () {}, child: const Text('Cancel')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
