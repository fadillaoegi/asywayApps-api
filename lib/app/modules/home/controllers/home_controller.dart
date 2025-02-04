import 'dart:async';

import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  final isCheckInOut = true.obs;
  final dateTimeNow = DateTime.now().obs;
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

  exctuteCheckInOut() {
    isCheckInOut.value = !isCheckInOut.value;
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      dateTimeNow.value = DateTime.now();
    });
  }
}
