import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting("id_ID");
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aswayapp",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    ),
  );
}
