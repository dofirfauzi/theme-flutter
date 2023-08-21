import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../register/register_screen.dart';
import 'components/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String routeName = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(children: [
            const SizedBox(height: 80),
            const Text(
              'Login',
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.w700, color: kDarkColor),
            ),
            const SizedBox(height: 20),
            const LoginForm(),
            const SizedBox(height: 30),
            Stack(
              children: [
                const Divider(
                  height: 20,
                  thickness: 2,
                  endIndent: 0,
                  color: kGrayColor,
                ),
                Center(
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      color: kBackGroundColor,
                      child: const Text(
                        'ATAU',
                        style: TextStyle(fontSize: 16, color: kTextColor),
                      )),
                )
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: kDarkColor,
                  padding: const EdgeInsets.symmetric(vertical: 14)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/google.svg',
                    width: 25,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  const Text('Login With Google')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RegisterScreen.routeName);
              },
              child: RichText(
                text: const TextSpan(
                    text: 'Belum Punya Akun ? ',
                    style: TextStyle(
                      fontSize: 16,
                      color: kTextColor,
                    ),
                    children: [
                      TextSpan(
                          text: 'Daftar Disini',
                          style: TextStyle(color: kPrimaryColor))
                    ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
