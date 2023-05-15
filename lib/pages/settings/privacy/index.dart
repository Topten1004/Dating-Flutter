import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dating_template/wcao/ui/cell.dart';
import 'package:get/get.dart';

class SettingsPrivacy extends StatefulWidget {
  const SettingsPrivacy({Key? key}) : super(key: key);

  @override
  State<SettingsPrivacy> createState() => _SettingsPrivacyState();
}

class _SettingsPrivacyState extends State<SettingsPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Cell(
              'Block contact',
              right: Transform.scale(
                scale: .8,
                child: CupertinoSwitch(
                  value: false,
                  onChanged: (value) {},
                ),
              ),
            ),
            Cell(
              'Allow others to see what I follow and be followed',
              right: Transform.scale(
                scale: .8,
                child: CupertinoSwitch(
                  value: false,
                  onChanged: (value) {},
                ),
              ),
            ),
            Cell(
              'Blacklist',
              onTap: () => Get.toNamed('/settings/backlist'),
            ),
          ],
        ),
      ),
    );
  }
}
