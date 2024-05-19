import 'package:chat_app/componts/button.dart';
import 'package:chat_app/services/auth/auth_servies.dart';
import 'package:chat_app/componts/text_filed.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();
  final TextEditingController _repswController = TextEditingController();
  final void Function()? onTap;

  RegisterPage({super.key, this.onTap});

  void register(BuildContext context) {
    final _auth = AuthService();
    if (_pswController.text == _repswController.text) {
      try {
        _auth.signUpWithEmail(_emailController.text, _pswController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    } else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Text("Password don't match! "),
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
            const Icon(
              Icons.message,
              size: 60,
            ),
            const SizedBox(
              height: 50,
            ),
            //welcome msg
            const Text(
              "Let's create a account!",
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
            TextFielda(
              hintText: "Confirm Password",
              obscureText: true,
              controller: _repswController,
              focusNode: null,
            ),
            AppButton(
              text: "Register",
              onTap: () => register(context),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Registered? "),
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    "SingIn Here",
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
