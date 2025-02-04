import 'package:aswayapp/app/configs/format_config.dart';
import 'package:aswayapp/app/styles/fonts_fldev.dart';
import 'package:aswayapp/app/widgets/button/btn_apps_fldev_widget.dart';
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
    final controllerFldev = Get.put(HomeController());

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: sizeScreen.height,
          width: sizeScreen.width,
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // NOTE: Header Section

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30.0,
                        // backgroundImage: AssetImage("assets/images/profile.png"),
                        backgroundColor: Colors.greenAccent,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                text: 'Selamat Pagi, ',
                                style: black500.copyWith(fontSize: 14.0),
                              ),
                            ]),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'Alifah',
                            style: black500.copyWith(fontSize: 16.0),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'Jabatan',
                            style: black400.copyWith(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Obx(
                    () {
                      final time = FormatAppsFLdev.timer(
                          controllerFldev.dateTimeNow.value.toString());
                      final date = FormatAppsFLdev.dateFull(
                          controllerFldev.dateTimeNow.value.toString());
                      return Text(
                        "$date, \n$time WIB",
                        style: black400.copyWith(fontSize: 13.0),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 20.0),

              // Attendance Section
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: ColorApps.white,
                  boxShadow: boxShadow,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Jam Masuk",
                              style: black500.copyWith(fontSize: 16.0),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Jam Keluar",
                              style: black500.copyWith(fontSize: 16.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Divider(color: Colors.grey),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "00.00",
                          style: black400.copyWith(fontSize: 18.0),
                        ),
                        Text(
                          "00.00",
                          style: black400.copyWith(fontSize: 18.0),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      "Jarak anda dari kantor: 5 m",
                      style: black400.copyWith(fontSize: 14.0),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        Expanded(
                            child: Obx(
                          () => BtnApps(
                            onPress: controllerFldev.isCheckInOut.value
                                ? () {
                                    // print("Check-in button pressed");
                                    controllerFldev.exctuteCheckInOut();

                                    // print(controllerFldev.isCheckInOut.value);
                                  }
                                : null,
                            color: Colors.blueAccent,
                            text: "Check In",
                          ),
                        )),
                        const SizedBox(width: 10.0),
                        Expanded(
                            child: Obx(
                          () => BtnApps(
                            onPress: controllerFldev.isCheckInOut.value == false
                                ? () {
                                    controllerFldev.exctuteCheckInOut();
                                    // print(controllerFldev.isCheckInOut.value);
                                    // print("Check-out button pressed");
                                  }
                                : null,
                            color: Colors.redAccent,
                            text: "Check Out",
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
