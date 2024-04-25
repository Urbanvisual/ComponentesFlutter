import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUlr;
  final String? name;

  const CustomCardType2({super.key, required this.imageUlr, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUlr),
          placeholder: const AssetImage('assets/images/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover, //tipo de adactarse a su widget
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        if (name != null)
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name ?? 'No title'))
      ]),
    );
  }
}
