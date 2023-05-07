import 'package:flutter/material.dart';
import 'package:mybookstore/app/modules/auth/sign-in/sign_in_body_widget.dart';

class SignInViewWidget extends StatelessWidget {
  const SignInViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SignInBodyWidget(),
    );
  }
}
