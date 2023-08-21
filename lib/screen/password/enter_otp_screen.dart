import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import 'components/enter_otp_form.dart';

class EnterOtpScreen extends StatelessWidget {
  const EnterOtpScreen({super.key});

  static String routeName = 'enter_otp_screen';

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
              'assets/images/verifikasi_otp.svg',
              width: 300,
            ),
            const SizedBox(height: 40),
            const Text(
              'Masukan OTP',
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.w700, color: kDarkColor),
            ),
            const SizedBox(height: 20),
            const Text(
              'Silahkan masukan OTP yang telah dikirim via email untuk merubah password',
              style: TextStyle(fontSize: 16, color: kTextColor),
            ),
            const SizedBox(height: 40),
            const EnterOtpForm(),
          ],
        ),
      ),
    );
  }
}
