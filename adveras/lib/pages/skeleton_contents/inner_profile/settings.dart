 import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: generalIconsColor,
            )),
        title: Text(
          'Profile Settings',
          style: TextStyle(
              color: generalTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.4),
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Column(),
    );
  }
}