import 'package:chat_app/services/auth/auth_servies.dart';
import 'package:chat_app/componts/button.dart';
import 'package:chat_app/componts/text_filed.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();
  final void Function()? onTap;

  SigninPage({super.key, this.onTap});

  void login(BuildContext context) async {
    final authService = AuthService();

    try {
      await authService.signInEmail(
        _emailController.text,
        _pswController.text,
      );
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //msg icon
            Icon(
              Icons.message,
              size: 60,
            ),
            const SizedBox(
              height: 50,
            ),
            //welcome msg
            const Text(
              "Welcome back you,ve been missed",
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFielda(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
              focusNode: null,
            ),

            TextFielda(
              hintText: "Password",
              obscureText: true,
              controller: _pswController,
              focusNode: null,
            ),
            AppButton(
              text: "SingIn",
              onTap: () => login(context),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
