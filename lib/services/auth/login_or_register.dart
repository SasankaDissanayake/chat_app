import 'package:chat_app/pages/register.dart';
import 'package:chat_app/pages/sign_in.dart';
import 'package:flutter/material.dart';

class SigninOrRegister extends StatefulWidget {
  SigninOrRegister({super.key});

  @override
  State<SigninOrRegister> createState() => _SigninOrRegisterState();
}

class _SigninOrRegisterState extends State<SigninOrRegister> {
  bool show = true;

  void toggle() {
    setState(() {
      show = !show;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (show) {
      return SigninPage(
        onTap: toggle,
      );
    } else {
      return RegisterPage(
        onTap: toggle,
      );
    }
  }
}
