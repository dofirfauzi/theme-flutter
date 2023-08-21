import 'package:flutter/material.dart';
import '../enter_otp_screen.dart';
import '../../../constants.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(fontSize: 16),
          decoration: const InputDecoration(
              fillColor: kGrayColor,
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              hintText: "Email",
              prefixIcon: Icon(
                Icons.email_outlined,
                color: kPlaceHolderTextColor,
              )),
          onChanged: (value) {},
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(EnterOtpScreen.routeName);
            },
            child: const Text(
              'Submit',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    ));
  }
}
