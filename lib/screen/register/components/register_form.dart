import 'package:flutter/material.dart';
import '../register_success_screen.dart';
import '../../../constants.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool showPassword = true;
  bool showKonfirmasiPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            style: const TextStyle(fontSize: 16),
            decoration: const InputDecoration(
                fillColor: kGrayColor,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                hintText: "Nama Lengkap",
                prefixIcon: Icon(
                  Icons.person_2_outlined,
                  color: kPlaceHolderTextColor,
                )),
            onChanged: (value) {},
          ),
          const SizedBox(height: 20),
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
          const SizedBox(height: 20),
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
                    .pushReplacementNamed(RegisterSuccessScreen.routeName);
              },
              child: const Text(
                'Register',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
