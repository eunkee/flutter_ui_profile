import 'package:flutter/material.dart';
import 'package:flutter_ui_profile/components/profile_buttons.dart';
import 'package:flutter_ui_profile/components/profile_count_info.dart';
import 'package:flutter_ui_profile/components/profile_drawer.dart';
import 'package:flutter_ui_profile/components/profile_header.dart';
import 'package:flutter_ui_profile/components/profile_tab.dart';
import 'package:flutter_ui_profile/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );

  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          const SizedBox(height: 20),
          ProfileHeader(),
          const SizedBox(height: 20),
          ProfileCountInfo(),
          const SizedBox(height: 20),
          ProfileButtons(),
          // 남아 있는 세로 공간을 모두 차지하기 위해 Expanded를 준다.
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text("Profile"),
      centerTitle: true,
    );
  }
}

