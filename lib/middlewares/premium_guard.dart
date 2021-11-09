import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_auth_guard/navigation.dart';
import 'package:getx_auth_guard/services/auth_service.dart';

class PremiumGuard extends GetMiddleware {
  final authService = Get.find<AuthService>();

  @override
  RouteSettings? redirect(String? route) {
    return authService.isPremium.value
        ? null
        : const RouteSettings(name: Routes.home);
  }
}
