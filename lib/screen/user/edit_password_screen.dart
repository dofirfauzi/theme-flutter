import 'package:flutter/material.dart';
import 'package:template/constants.dart';

class EditPasswordScreen extends StatelessWidget {
  const EditPasswordScreen({super.key});

  static String routeName = 'edit_password_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        title: const Text('Edit Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(children: const [FormEditPassword()]),
      ),
    );
  }
}

class FormEditPassword extends StatefulWidget {
  const FormEditPassword({
    super.key,
  });

  @override
  State<FormEditPassword> createState() => _FormEditPasswordState();
}

class _FormEditPasswordState extends State<FormEditPassword> {
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
            hintText: "Password Baru",
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
            hintText: "Konfirmasi Password Baru",
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
            onPressed: () {},
            child: const Text(
              'Update Password',
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
