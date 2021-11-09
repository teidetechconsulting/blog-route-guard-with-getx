import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_auth_guard/navigation.dart';

class PremiumAreaView extends StatelessWidget {
  const PremiumAreaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium Area'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is a restricted area!',
                style: context.textTheme
                    .headline5, // context is made available by the get package
              ),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.offAndToNamed(Routes.home);
                },
                child: const Text('GO BACK TO HOME'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
