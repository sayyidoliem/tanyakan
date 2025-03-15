import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final bool _isSwitchEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SwitchListTile(
            //switch at left side of label
            value: _isSwitchEnable,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {},
            title: const Text("Enabled darkmode"),
          ),
        ],
      ),
    );
  }
}
