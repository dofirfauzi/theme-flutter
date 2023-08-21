import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import 'components/forgot_password_form.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  static String routeName = 'forgor_password_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: kBackGroundColor,
        iconTheme: const IconThemeData(color: kTextColor),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(height: 40),
            SvgPicture.asset(
              'assets/images/forgot_password.svg',
              width: 350,
            ),
            const SizedBox(height: 40),
            const Text(
              'Forgot',
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.w700, color: kDarkColor),
            ),
            const Text(
              'Password?',
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.w700, color: kDarkColor),
            ),
            const SizedBox(height: 20),
            const Text(
              'Silahkan masukan email anda untuk mereset password !',
              style: TextStyle(fontSize: 16, color: kTextColor),
            ),
            const SizedBox(height: 40),
            const ForgotPasswordForm()
          ],
        ),
      ),
    );
  }
}
