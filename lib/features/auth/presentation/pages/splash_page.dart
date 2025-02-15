import 'dart:async';

import 'package:tanyakan/helper/storage.dart';
import 'package:tanyakan/utils/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(UserStorage.getUserName());
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              FutureBuilder(
                future: UserStorage.getUserName(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    Future.delayed(const Duration(seconds: 3));
                    context.router.replace(const LoginRoute());
                    return const CircularProgressIndicator();
                  } else {
                    Future.delayed(const Duration(seconds: 3));
                    context.router.replace(const ChatRoute());
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
