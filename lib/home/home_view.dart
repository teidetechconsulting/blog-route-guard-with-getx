import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_auth_guard/navigation.dart';
import 'package:getx_auth_guard/services/auth_service.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final AuthService _authService = Get.find<AuthService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to my awesome App!',
                style: context.textTheme
                    .headline5, // context is made available by the get package
              ),
              const SizedBox(
                height: 16.0,
              ),
              Obx(() {
                return SwitchListTile(
                  title: const Text('isPremium value'),
                  value: _authService.isPremium.value,
                  onChanged: _authService.setIsPremium,
                );
              }),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.offAndToNamed(Routes.premiumArea);
                },
                child: const Text('GO TO PREMIUM AREA'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
