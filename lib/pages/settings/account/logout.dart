import 'package:flutter/material.dart';
import 'package:flutter_dating_template/state/token.dart';
import 'package:flutter_dating_template/wcao/kit/index.dart';
import 'package:flutter_dating_template/wcao/ui/theme.dart';
import 'package:get/get.dart';

class AccountLogout extends StatefulWidget {
  const AccountLogout({Key? key}) : super(key: key);

  @override
  State<AccountLogout> createState() => _AccountLogoutState();
}

class _AccountLogoutState extends State<AccountLogout> {
  List<String> texts = [
"Any personal data leakage, loss, theft or tampering caused by hacker attacks, computer virus intrusions or outbreaks, temporary shutdowns caused by government regulations, etc. ",
"The APP platform does not guarantee the accuracy and completeness of the external links set up for the convenience of users. We do not assume any responsibility."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account cancellation'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Before you decide to log out, please read the following content carefully',
                  style: TextStyle(
                    fontSize: WcaoTheme.fsBase * 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: texts
                      .map(
                        (e) => Container(
                          margin: const EdgeInsets.only(top: 24),
                          child: Text(
                            e,
                            style: TextStyle(
                              fontSize: WcaoTheme.fsL,
                              height: 1.75,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                InkWell(
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Confirm logout'),
                      content: const Text('If the account is canceled, the data will not be retrieved'),
                      buttonPadding: EdgeInsets.zero,
                      actions: [
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () async {
                                  Get.back();
                                  await WcaoUtils.loading(msg: "Logging out...");
                                  TokenController.to.delete();
                                  await Future.delayed(
                                      const Duration(seconds: 1));
                                  WcaoUtils.dismiss();
                                  Get.offAllNamed('/login/verify-code');
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        width: .5,
                                        color: WcaoTheme.outline,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Logout',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: WcaoTheme.fsL,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () => Get.back(),
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        width: .5,
                                        color: WcaoTheme.outline,
                                      ),
                                    ),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                      color: WcaoTheme.primary,
                                      fontSize: WcaoTheme.fsL,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      actionsPadding: EdgeInsets.zero,
                    ),
                  ),
                  // onTap: () async {

                  //   await WcaoUtils.loading();
                  //   TokenController.to.delete();
                  //   await Future.delayed(const Duration(seconds: 2));
                  //   WcaoUtils.dismiss();
                  //   Get.offAllNamed('/login/verify-code');
                  // },
                  child: Container(
                    margin: const EdgeInsets.only(top: 36),
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: WcaoTheme.radius,
                    ),
                    child: const Text(
                      'Confirm logout',
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
      ),
    );
  }
}
