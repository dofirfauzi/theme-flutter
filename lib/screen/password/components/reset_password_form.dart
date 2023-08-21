import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../reset_password_success.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({
    super.key,
  });

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  bool showPassword = true;
  bool showKonfirmasiPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          obscureText: showPassword,
          style: const TextStyle(fontSize: 16),
          decoration: InputDecoration(
            fillColor: kGrayColor,
            filled: true,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            hintText: "Password",
            prefixIcon: const Icon(
              Icons.lock_outline,
              color: kPlaceHolderTextColor,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
              icon: const Icon(
                Icons.remove_red_eye_outlined,
                color: kPlaceHolderTextColor,
              ),
            ),
          ),
          onChanged: (value) {},
        ),
        const SizedBox(height: 20),
        TextFormField(
          obscureText: showKonfirmasiPassword,
          style: const TextStyle(fontSize: 16),
          decoration: InputDecoration(
            fillColor: kGrayColor,
            filled: true,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            hintText: "Konfirmasi Password",
            prefixIcon: const Icon(
              Icons.lock_outline,
              color: kPlaceHolderTextColor,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  showKonfirmasiPassword = !showKonfirmasiPassword;
                });
              },
              icon: const Icon(
                Icons.remove_red_eye_outlined,
                color: kPlaceHolderTextColor,
              ),
            ),
          ),
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(ResetPaswordSuccess.routeName);
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
