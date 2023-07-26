import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/routes/app_pages.dart';

class NavigationDrawerND extends StatelessWidget {
  const NavigationDrawerND({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          buildDrawerHeader(),
          const Divider(
            color: Colors.black26,
          ),
          buildDrawerItem(
            icon: Icons.photo,
            text: "Photo",
            onTap: () => navigate(0),
            tileColor: Get.currentRoute == Routes.PHOTO ? Colors.blue : null,
            textIconColor:
                Get.currentRoute == Routes.PHOTO ? Colors.white : Colors.black,
          ),
          buildDrawerItem(
            icon: Icons.video_call,
            text: "Video",
            onTap: () => navigate(1),
            tileColor: Get.currentRoute == Routes.VIDEO ? Colors.blue : null,
            textIconColor:
                Get.currentRoute == Routes.VIDEO ? Colors.white : Colors.black,
          ),
          buildDrawerItem(
              icon: Icons.chat,
              text: "Chat",
              onTap: () => navigate(2),
              tileColor: Get.currentRoute == Routes.CHAT ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.CHAT
                  ? Colors.white
                  : Colors.black),
        ],
      ),
    );
  }

  Widget buildDrawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: const Text('Simon Hill'),
      accountEmail: const Text('simon.hill@eliteitteam.com'),
      currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.purple.shade800,
          child: const Text(
            'SH',
            style: TextStyle(fontSize: 40),
          )),
      currentAccountPictureSize: const Size.fromRadius(35),
      otherAccountsPictures: [
        CircleAvatar(
            backgroundColor: Colors.purple.shade100, child: const Text('sh')),
      ],
      otherAccountsPicturesSize: const Size.fromRadius(12),
    );
  }

  Widget buildDrawerItem({
    required String text,
    required IconData icon,
    required Color textIconColor,
    required Color? tileColor,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: textIconColor,
      ),
      title: Text(
        text,
        style: TextStyle(color: textIconColor),
      ),
      tileColor: tileColor,
      onTap: onTap,
    );
  }

  navigate(int index) {
    if (index == 0) {
      Get.toNamed(Routes.PHOTO);
    } else if (index == 1) {
      Get.toNamed(Routes.VIDEO);
    }
    if (index == 2) {
      Get.toNamed(Routes.CHAT);
    }
  }
}
