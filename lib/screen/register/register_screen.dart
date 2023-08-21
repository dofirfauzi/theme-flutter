import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'components/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static String routeName = 'register_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              const SizedBox(height: 40),
              SvgPicture.asset(
                'assets/images/sign_up.svg',
                width: 250,
              ),
              const SizedBox(height: 30),
              const Text(
                'Register',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: kDarkColor),
              ),
              const SizedBox(height: 20),
              const RegisterForm(),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: RichText(
                  text: const TextSpan(
                      text: 'Sudah Punya Akun ? ',
                      style: TextStyle(
                        fontSize: 16,
                        color: kTextColor,
                      ),
                      children: [
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(color: kPrimaryColor))
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
