import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_auth_guard/home/home_view.dart';
import 'package:getx_auth_guard/middlewares/premium_guard.dart';
import 'package:getx_auth_guard/premium_area/premium_area_view.dart';

abstract class Routes {
  static const home = '/home';
  static const premiumArea = '/premium-area';
}

final appPages = [
  GetPage(
    name: Routes.home,
    page: () => HomeView(),
  ),
  GetPage(
    name: Routes.premiumArea,
    page: () => const PremiumAreaView(),
    middlewares: [
      PremiumGuard(),
    ],
  ),
];
