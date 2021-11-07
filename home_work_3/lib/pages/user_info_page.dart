// ignore_for_file: use_key_in_widget_constructors, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:home_work_3/model/user.dart';

class UserInfoPage extends StatelessWidget {
  final User userInfo;
  const UserInfoPage({required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
        centerTitle: true,
      ),
      body: Card(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                userInfo.name,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle:  Text((userInfo.story != null) ? userInfo.story!:''),
              leading: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              trailing:  Text((userInfo.country != '') ? userInfo.country:''),
            ),
            ListTile(
              title: Text(
                userInfo.phone,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.phone,
                color: Colors.black,
              ),
            ),
           (userInfo.email != '') ? ListTile(
              title: Text(
                userInfo.email!,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.mail,
                color: Colors.black,
              ),
            ):Container(),
          ],
        ),
      ),
    );
  }
}
