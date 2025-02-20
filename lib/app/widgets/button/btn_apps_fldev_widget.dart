import 'package:aswayapp/app/styles/color.dart';
import 'package:aswayapp/app/styles/fonts_fldev.dart';
import 'package:flutter/material.dart';

class BtnApps extends StatelessWidget {
  const BtnApps(
      {super.key,
      this.onPress,
      this.text = "",
      this.color,
      this.sizeText = 14.0});

  final VoidCallback? onPress;
  final String? text;
  final Color? color;
  final double? sizeText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          spreadRadius: 1,
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ]),
      child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? ColorAppsFLdev.primary,
            shadowColor: Colors.black.withValues(alpha: 0.10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Text(
            text!,
            textAlign: TextAlign.center,
            style: white600.copyWith(fontSize: sizeText),
          )),
    );
  }
}
