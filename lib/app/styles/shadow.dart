import 'package:aswayapp/app/styles/color.dart';
import 'package:flutter/material.dart';

List<BoxShadow>? boxShadow = [
  BoxShadow(
    color: ColorAppsFLdev.black.withValues(alpha: 0.10), // Warna bayangan
    spreadRadius: 0, // Seberapa jauh shadow menyebar
    blurRadius: 7, // Seberapa halus blur shadow
    offset: const Offset(0, 5), // Offset shadow (X, Y)
  )
];
