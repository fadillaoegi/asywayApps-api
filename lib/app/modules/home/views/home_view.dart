import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';
import 'package:aswayapp/app/styles/color.dart';
import 'package:aswayapp/app/styles/shadow.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: sizeScreen.height,
        width: sizeScreen.width,
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Alifah',
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      'Selamat datang di Aswaymobile',
                    ),
                  ],
                ),
                SizedBox(
                  height: 60.0,
                  width: 60.0,
                  child: CircleAvatar(),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: ColorApps.white,
                boxShadow: boxShadow,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("Jam masuk"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Jam Keluar"),
                        ],
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("00.00"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("00.00"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
