import 'package:get/get.dart';
import 'package:getx_auth_guard/services/auth_service.dart';

class HomeController extends GetxController {
  final AuthService _authService = Get.find<AuthService>();

  void togglePremium() {
    //
  }
}
