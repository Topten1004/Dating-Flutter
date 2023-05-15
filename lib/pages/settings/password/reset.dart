import 'package:flutter/material.dart';
import 'package:flutter_dating_template/wcao/kit/index.dart';
import 'package:flutter_dating_template/wcao/ui/theme.dart';
import 'package:get/get.dart';

/// HACK: 设置新密码

class PasswordReset extends StatefulWidget {
  const PasswordReset({Key? key}) : super(key: key);

  @override
  State<PasswordReset> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<PasswordReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: InkWell(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 26),
          margin: const EdgeInsets.only(bottom: 56),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Set new password',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: WcaoTheme.base,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                child: Text(
                  'The password must be at least 8 characters, including a combination of numbers/letters/characters',
                  style: TextStyle(color: WcaoTheme.secondary),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 36),
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: "Please enter a new password",
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
                onTap: () async {
                  await WcaoUtils.toast('Password reset successful!');
                  Get.offAllNamed('/login/password');
                },
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 36),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: WcaoTheme.radius,
                    color: WcaoTheme.primary,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Confirm',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
