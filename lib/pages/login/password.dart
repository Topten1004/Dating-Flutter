import 'package:flutter/material.dart';
import 'package:flutter_dating_template/pages/login/widgets/head.dart';
import 'package:flutter_dating_template/state/token.dart';
import 'package:flutter_dating_template/wcao/ui/theme.dart';

import 'package:get/get.dart';

// HACK: 密码登录

class LoginPassword extends StatefulWidget {
  const LoginPassword({Key? key}) : super(key: key);

  @override
  State<LoginPassword> createState() => _LoginState();
}

class _LoginState extends State<LoginPassword> {
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
                const Head(),
                buildPassWord(),
                loginButton(),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: 0,
                        child: Text(
                          "Forgot the password?",
                          style: TextStyle(
                            color: WcaoTheme.placeholder,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/login/verify-code');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Password-free login",
                            style: TextStyle(
                              color: WcaoTheme.primaryFocus,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/verify-code/reset_password');
                        },
                        child: Text(
                          "Forget the password?",
                          style: TextStyle(
                            color: WcaoTheme.secondary,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign in to agree",
                        style: TextStyle(color: WcaoTheme.placeholder),
                      ),
                      InkWell(child: const Text('《User Agreement》'), onTap: () {}),
                      Text(
                        "and",
                        style: TextStyle(color: WcaoTheme.placeholder),
                      ),
                      InkWell(child: const Text('《Privacy Policy》'), onTap: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 密码登录
  Column buildPassWord() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12),
          child: Wrap(
            children: [
              Text(
                'password',
                style: TextStyle(
                  fontSize: 14,
                  color: WcaoTheme.placeholder,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 12),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: "please enter password",
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
      ],
    );
  }

  /// 登录按钮
  InkWell loginButton() {
    return InkWell(
      onTap: () {
        TokenController.to.set();
        Get.offAllNamed('/home');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 36),
        alignment: Alignment.center,
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          color: WcaoTheme.primary,
          borderRadius: WcaoTheme.radius,
        ),
        child: const Text(
          'Log in',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );
  }
}
