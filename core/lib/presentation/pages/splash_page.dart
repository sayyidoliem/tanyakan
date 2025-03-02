import 'dart:async';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                    context.pushReplacement(LOGIN_PAGE_ROUTE);
                    return const CircularProgressIndicator();
                  } else {
                    Future.delayed(const Duration(seconds: 3));
                    context.pushReplacement(CHAT_PAGE_ROUTE);
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
