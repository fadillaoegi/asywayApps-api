import 'package:aswayapp/app/styles/color.dart';
import 'package:aswayapp/app/styles/fonts_fldev.dart';
import 'package:flutter/material.dart';

class BtnWithIcon extends StatelessWidget {
  const BtnWithIcon({
    super.key,
    this.onTap,
    this.text = "",
    this.imageIcon = "assets/images/googleIcon.png",
  });
  final VoidCallback? onTap;
  final String? text;
  final String? imageIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: ColorAppsFLdev.white,
            border: Border.all(color: ColorAppsFLdev.primary),
            borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageIcon!,
              height: 20.0,
              width: 20.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              text!,
              style: black600.copyWith(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}
