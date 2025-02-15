import 'package:tanyakan/common/decoration.dart';
import 'package:tanyakan/helper/storage.dart';
import 'package:tanyakan/utils/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   'Welcome back you\' ve been missed',
              //   style: TextStyle(color: Colors.grey[800]),
              // ),
              Theme(
                data: ThemeDataSupabase(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SupaEmailAuth(
                    redirectTo: kIsWeb ? null : 'io.mydomain.myapp://callback',
                    onSignInComplete: (response) {
                      SettingsStorage.saveSupabaseToken(
                          response.session?.accessToken ?? '');
                          UserStorage.saveUserName(response.user?.id ?? '');
                      context.router.push(const ChatRoute());
                    },
                    onSignUpComplete: (response) {
                      context.router.push(const LoginRoute());
                    },
                    metadataFields: [
                      MetaDataField(
                        prefixIcon: const Icon(Icons.person),
                        label: 'Username',
                        key: 'username',
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter something';
                          } 
                        },
                      ),
                      /*
                      ==for terms and condition information agreement
                      BooleanMetaDataField(
                        key: 'terms_agreement',
                        isRequired: true,
                        checkboxPosition: ListTileControlAffinity.leading,
                        richLabelSpans: [
                          const TextSpan(text: 'I have read and agree to the '),
                          TextSpan(
                            text: 'Terms and Conditions',
                            style: const TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                      */
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
