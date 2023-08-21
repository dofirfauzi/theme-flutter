import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class ResetPaswordSuccess extends StatelessWidget {
  const ResetPaswordSuccess({super.key});

  static String routeName = 'reset_password_success_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(height: 100),
            SvgPicture.asset(
              'assets/images/register_success.svg',
              width: 300,
            ),
            const SizedBox(height: 40),
            const Text(
              'Sukses',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.w700, color: kDarkColor),
            ),
            const SizedBox(height: 10),
            const Text(
              'Selamat password anda telah berhasil diubah, selanjutnya silahkan login',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: kTextColor),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Login'),
            ),
          ],
        ),
      )),
    );
  }
}
