import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';

class RegisterSuccessScreen extends StatelessWidget {
  const RegisterSuccessScreen({super.key});

  static String routeName = 'register_success_screen';

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
              'Registrasi Sukses',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.w700, color: kDarkColor),
            ),
            const SizedBox(height: 10),
            const Text(
              'Selamat akun anda telah berhasil dibuat, selanjutnya silahkan login',
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
