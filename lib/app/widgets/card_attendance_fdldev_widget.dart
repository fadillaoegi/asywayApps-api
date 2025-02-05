import 'package:aswayapp/app/modules/home/controllers/home_controller.dart';
import 'package:aswayapp/app/styles/color.dart';
import 'package:aswayapp/app/styles/fonts_fldev.dart';
import 'package:aswayapp/app/styles/shadow.dart';
import 'package:aswayapp/app/widgets/button/btn_apps_fldev_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CardAttendanceFLdev extends StatelessWidget {
  const CardAttendanceFLdev(
      {super.key, required this.controllerFldev, this.sizeScreen});

  final HomeController controllerFldev;
  final Size? sizeScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeScreen!.width,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: ColorAppsFLdev.white,
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
                "00.00", // checkIn
                style: black400.copyWith(fontSize: 20.0),
              ),
              Text(
                "00.00", // checkOut
                style: black400.copyWith(fontSize: 20.0),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Text(
            "Jarak anda dari kantor: 5 m",
            style: disable2400.copyWith(fontSize: 14.0),
          ),
          const SizedBox(height: 16.0),

          // NOTE: BUTTON
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
    );
  }
}
