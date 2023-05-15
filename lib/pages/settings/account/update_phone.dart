import 'package:flutter/material.dart';
import 'package:flutter_dating_template/wcao/ui/theme.dart';
import 'package:get/get.dart';

/// HACK: 账号设置-验证当前手机号

class AccountUpdatePhone extends StatefulWidget {
  const AccountUpdatePhone({Key? key}) : super(key: key);

  @override
  State<AccountUpdatePhone> createState() => _AccountUpdatePhoneState();
}

class _AccountUpdatePhoneState extends State<AccountUpdatePhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Change phone number',
                style: TextStyle(
                  fontSize: WcaoTheme.fsBase * 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                child: Text(
                  'After changing your mobile phone number, please log in to the APP again',
                  style: TextStyle(color: WcaoTheme.secondary),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 48),
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  maxLength: 11,
                  decoration: InputDecoration(
                    counterText: "",
                    hintText: "Please enter the phone number",
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: WcaoTheme.outline,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: WcaoTheme.primaryFocus,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed('/verify-code/update_phone');
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 36),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: WcaoTheme.primary,
                    borderRadius: WcaoTheme.radius,
                  ),
                  child: const Text(
                    'Replace',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
