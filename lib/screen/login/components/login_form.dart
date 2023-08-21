import 'package:flutter/material.dart';
import '../../home/home_screen.dart';
import '../../password/forgot_password_screen.dart';
import '../../../constants.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          autofocus: true,
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
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ForgotPasswordScreen.routeName);
            },
            child: const Text('Lupa Password ?',
                style: TextStyle(fontSize: 16, color: kPrimaryColor)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    ));
  }
}
