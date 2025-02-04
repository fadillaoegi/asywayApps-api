import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_app_controller.dart';

class MainAppView extends GetView<MainAppController> {
  const MainAppView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainAppView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MainAppView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
