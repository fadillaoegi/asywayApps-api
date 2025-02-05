import 'dart:async';

import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  final isCheckInOut = true.obs;
  final dateTimeNow = DateTime.now().obs;
  final greeting = "Selamat Pagi".obs;
  Timer? _timer;
  @override
  void onInit() {
    super.onInit();
    _startTimer();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      dateTimeNow.value = DateTime.now();
      greeting.value = getGreeting(); // Update greeting setiap detik
    });
  }

  String getGreeting() {
    int hour = dateTimeNow.value.hour;
    if (hour >= 0 && hour <= 10) {
      return "Selamat Pagi,";
    } else if (hour >= 11 && hour <= 15) {
      return "Selamat siang,";
    } else if (hour >= 15 && hour <= 18) {
      return "Selamat Sore,";
    } else {
      return "Selamat Malam,";
    }
  }

  exctuteCheckInOut() {
    isCheckInOut.value = !isCheckInOut.value;
  }
}
