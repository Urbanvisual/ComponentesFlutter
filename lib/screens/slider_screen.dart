import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sliders && Checks',
            style: TextStyle(color: Colors.white)),
      ),
      body: Column(children: [
        Slider.adaptive(
            activeColor: AppTheme.primary,
            divisions: 10,
            value: _sliderValue,
            min: 50,
            max: 400,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null),
        /* Checkbox(
             value: _sliderEnabled,
             onChanged: (value) {
               _sliderEnabled = value ?? true;
               setState(() {});
           }),   */
        CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
                  _sliderEnabled = value ?? true;
                })),
        const AboutListTile(), //podemos ver todas las licensias de material
        /*Switch(
           value: _sliderEnabled,
           onChanged: (value) => setState(() {
                 _sliderEnabled = value;
               })),  */
        SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
                  _sliderEnabled = value;
                })),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
                image: const NetworkImage(
                    'https://th.bing.com/th/id/OIP.ZpdZqDlxqM_NZXxQ4z5TYAHaJ4?pid=ImgDet&w=474&h=632&rs=1'),
                fit: BoxFit.contain,
                width: _sliderValue),
          ),
        ),
      ]),
    );
  }
}
