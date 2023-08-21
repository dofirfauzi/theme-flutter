import 'package:flutter/material.dart';
import 'package:template/screen/user/edit_password_screen.dart';
import 'package:template/screen/user/edit_profile_screen.dart';

import '../../../constants.dart';

class UserSideBar extends StatelessWidget {
  const UserSideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackGroundColor,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 60, bottom: 40),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Column(children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: kBackGroundColor,
                    borderRadius: BorderRadius.circular(50)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/user_demo.jpg',
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Dofir Fauzi',
                style: TextStyle(fontSize: 16, color: kBackGroundColor),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Text(
                'dofirfauzi@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: kBackGroundColor.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              )
            ]),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(EditProfileScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kGrayColor,
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.person_outline,
                        color: kTextColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Edit Profile',
                        style: TextStyle(fontSize: 16, color: kTextColor),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(EditPasswordScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kGrayColor,
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.lock_outline,
                        color: kTextColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Edit Password',
                        style: TextStyle(fontSize: 16, color: kTextColor),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kGrayColor,
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.logout_outlined,
                        color: kTextColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Logout',
                        style: TextStyle(fontSize: 16, color: kTextColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
