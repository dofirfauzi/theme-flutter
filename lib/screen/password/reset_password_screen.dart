import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/reset_password_form.dart';
import '../../constants.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  static String routeName = 'reset_password_screen';

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
              'assets/images/my_password.svg',
              width: 220,
            ),
            const SizedBox(height: 30),
            const Text(
              'Reset',
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
              'Silahkan masukan password baru anda',
              style: TextStyle(fontSize: 16, color: kTextColor),
            ),
            const SizedBox(height: 20),
            const ResetPasswordForm()
          ],
        ),
      ),
    );
  }
}
