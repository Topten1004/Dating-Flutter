import 'package:flutter/material.dart';
import 'package:flutter_dating_template/wcao/ui/cell.dart';
import 'package:get/get.dart';

/// HACK: 账户设置

class SettingsAccount extends StatefulWidget {
  const SettingsAccount({Key? key}) : super(key: key);

  @override
  State<SettingsAccount> createState() => _SettingsAccountState();
}

class _SettingsAccountState extends State<SettingsAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Cell('Change Password', onTap: () => Get.toNamed('/password/update')),
            Cell('Change the bound mobile phone number',
                onTap: () => Get.toNamed('/settings/account/update-phone')),
            Cell('Logout', onTap: () => Get.toNamed('/settings/account/logout')),
          ],
        ),
      ),
    );
  }
}
