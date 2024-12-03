import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_info/flutter_app_info.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final infoPackage = AppInfo.of(context).package;
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('App Name: ${infoPackage.appName}'), //Display App Name
            Text(
                'App Version: ${infoPackage.versionWithoutBuild}'), //Display App Version
            const Text('Created and develop by : Olimhouse Studio'),
          ],
        ),
      ),
    );
  }
}
