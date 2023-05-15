import 'package:flutter/material.dart';
import 'package:flutter_dating_template/wcao/ui/theme.dart';

class AgreementPrivacy extends StatefulWidget {
  const AgreementPrivacy({Key? key}) : super(key: key);

  @override
  State<AgreementPrivacy> createState() => _AgreementPrivacyState();
}

class _AgreementPrivacyState extends State<AgreementPrivacy> {
  List<String> txt = [
    "After the user completes all the registration steps according to the prompts given on the page, he will become our user. The user should keep the account number and password by himself, and use his account number and password accurately and safely. The user can provide the user with personalized information services.",
    "The user fully understands and agrees that this platform provides users with personalized information services, and the user shall be responsible for the behavior under his registered account, including any content imported, uploaded, and transmitted by the user and any consequences arising therefrom. The user shall be responsible for the content Use your own judgment and bear all risks arising from the use of the content. We are not responsible for losses caused by user actions.",
    "Any personal data leakage, loss, theft or tampering caused by hacker attacks, computer virus intrusions or outbreaks, temporary shutdowns caused by government regulations, etc. ",
    "The personal information provided by the user or the information released is untrue, inaccurate, and illegal; if the published content does not comply with this agreement or the published content does not comply with laws and regulations, we have the right to suspend or terminate the user's use of the services of this platform. If there is any objection to the suspension or termination of the APP or the withdrawal of its account, the customer can submit opinions to the platform and ask it to continue to provide services. We receive complaints and comments from customers on such information, and will review the relevant information and give feedback to users in a timely manner. If the information is indeed untrue or inaccurate or illegal, the platform requires users to provide information that meets the requirements.",
    "The APP platform does not guarantee the accuracy and completeness of the external links set up for the convenience of users. We do not assume any responsibility."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Privacy Policy"), centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: WcaoTheme.base),
              child: Column(
                children: txt
                    .map(
                      (e) => Container(
                        margin: const EdgeInsets.only(bottom: 32),
                        child: Text(e),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
