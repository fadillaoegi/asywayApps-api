import 'package:aswayapp/app/configs/format_config.dart';
import 'package:aswayapp/app/styles/fonts_fldev.dart';
import 'package:aswayapp/app/widgets/card_attendance_fdldev_widget.dart';
import 'package:aswayapp/app/widgets/card_history_attendance_fldev_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE: HEADER SECTION =======
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ==========
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          radius: 34.0,
                          // backgroundImage: AssetImage("assets/images/profile.png"),
                          backgroundColor: Colors.blueAccent,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),

                        // ==========
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () {
                                return Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                      text: controllerFldev.greeting.value,
                                      style: black400.copyWith(fontSize: 16.0),
                                    ),
                                  ]),
                                );
                              },
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

                    // ==========
                    Obx(
                      () {
                        final time = FormatAppsFLdev.timer(
                            controllerFldev.dateTimeNow.value.toString());
                        final date = FormatAppsFLdev.dateFull(
                            controllerFldev.dateTimeNow.value.toString());
                        return Expanded(
                          child: Text(
                            "$date, \n$time WIB",
                            textAlign: TextAlign.right,
                            // overflow: TextOverflow.ellipsis,
                            style: black400.copyWith(fontSize: 14.0),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                // NOTE: ATTANDANCE SECTION =======
                CardAttendanceFLdev(
                    controllerFldev: controllerFldev, sizeScreen: sizeScreen),
                const SizedBox(height: 30.0),
                // NOTE: HISTORY SECTION =======
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Riwayat kehadiran",
                        style: black500.copyWith(fontSize: 16.0)),
                    Text("Lihat semua",
                        style: blueAccent400.copyWith(fontSize: 14.0))
                  ],
                ),
                const SizedBox(height: 20.0),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CardHistoryAttendanceFLdev(
                        sizeScreen: sizeScreen,
                        controllerFldev: controllerFldev);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
