import 'package:flutter/material.dart';
import '../../constants.dart';

import 'components/user_side_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        title: const Text('Users'),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: kBackGroundColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/user_demo.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ));
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      endDrawer: const UserSideBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              border: Border.all(color: kGrayColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/user_demo.jpg',
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jhon Doe',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'jhondoe@gmail.com',
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: kAccentColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              border: Border.all(color: kGrayColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/user_demo.jpg',
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jhon Doe',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'jhondoe@gmail.com',
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: kAccentColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              border: Border.all(color: kGrayColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/user_demo.jpg',
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jhon Doe',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'jhondoe@gmail.com',
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: kAccentColor,
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
