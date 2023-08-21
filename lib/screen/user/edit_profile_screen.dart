import 'package:flutter/material.dart';
import 'package:template/constants.dart';

import 'components/form_edit_profile.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  static String routeName = 'edit_profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
        child: ListView(children: const [FormEditProfile()]),
      ),
    );
  }
}
