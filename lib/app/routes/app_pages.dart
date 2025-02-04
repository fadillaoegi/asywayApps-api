import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main_app/bindings/main_app_binding.dart';
import '../modules/main_app/views/main_app_view.dart';
import '../modules/modules_auth/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/modules_auth/forgot_password/views/forgot_password_view.dart';
import '../modules/modules_auth/sigin/bindings/sigin_binding.dart';
import '../modules/modules_auth/sigin/views/sigin_view.dart';
import '../modules/modules_auth/sigup/bindings/sigup_binding.dart';
import '../modules/modules_auth/sigup/views/sigup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.signin,
      page: () => const SiginView(),
      binding: SiginBinding(),
    ),
    GetPage(
      name: _Paths.signup,
      page: () => const SigupView(),
      binding: SigupBinding(),
    ),
    GetPage(
      name: _Paths.forgotPassword,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_APP,
      page: () => const MainAppView(),
      binding: MainAppBinding(),
    ),
  ];
}
