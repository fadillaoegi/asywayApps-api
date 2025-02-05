import 'package:aswayapp/app/configs/format_config.dart';
import 'package:aswayapp/app/modules/home/controllers/home_controller.dart';
import 'package:aswayapp/app/styles/color.dart';
import 'package:aswayapp/app/styles/fonts_fldev.dart';
import 'package:aswayapp/app/styles/shadow.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CardHistoryAttendanceFLdev extends StatelessWidget {
  const CardHistoryAttendanceFLdev({
    super.key,
    required this.sizeScreen,
    required this.controllerFldev,
  });

  final Size sizeScreen;
  final HomeController controllerFldev;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeScreen.width,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: ColorAppsFLdev.white,
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            final currentDate = FormatAppsFLdev.dateFull(
                controllerFldev.dateTimeNow.value.toString());
            return Text(
              currentDate,
              style: black500.copyWith(fontSize: 16.0),
            );
          }),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 40.0,
                    color: ColorAppsFLdev.error,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CheckIn",
                        style: disable2600,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "00.00",
                        style: blueAccent500,
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 40.0,
                    color: ColorAppsFLdev.error,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CheckOut",
                        style: disable2600,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "00.00",
                        style: blueAccent500,
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
