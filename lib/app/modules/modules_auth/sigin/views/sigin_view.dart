import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sigin_controller.dart';

class SiginView extends GetView<SiginController> {
  const SiginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SiginView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SiginView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
