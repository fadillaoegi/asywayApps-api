import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final isCheckInOut = true.obs;
  final dateTimeNow = DateTime.now().obs;
  final greeting = "Selamat Pagi".obs;
  final checkInOut = true.obs;
  Timer? _timer;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void onInit() {
    super.onInit();
    _initializeNotifications();
    _startTimer();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  exctuteCheckInOut() {
    checkInOut.value = !checkInOut.value;
    update();
  }

  void _initializeNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      dateTimeNow.value = DateTime.now();
      greeting.value = getGreeting(); // Update greeting setiap detik
      _checkAndSendNotification();
    });
  }

  void _checkAndSendNotification() {
    DateTime now = DateTime.now();
    if (now.hour == 15 && now.minute == 55) {
      _sendNotification();
    }
  }

  Future<void> _sendNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'check_out_reminder',
      'Check-Out Reminder',
      channelDescription: 'Notifikasi pengingat untuk check-out kerja',
      importance: Importance.high,
      priority: Priority.high,
    );
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
      0,
      'Pengingat Check-Out',
      'Sudah hampir waktu check-out, silakan lakukan check-out sebelum pukul 16:00!',
      platformChannelSpecifics,
    );
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

  void executeCheckInOut() {
    isCheckInOut.value = !isCheckInOut.value;
    update();
  }
}
