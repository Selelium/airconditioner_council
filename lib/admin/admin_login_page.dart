import 'package:flutter/material.dart';
import 'admin_setting_page.dart';

class AdminLoginPage extends StatelessWidget {
  String adminId = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("管理者ログイン")),
        body: Column(children: [
          TextField(
              decoration: InputDecoration(labelText: 'ID'),
              onChanged: (id) {
                adminId = id;
              }),
          TextField(
              decoration: InputDecoration(labelText: 'password'),
              onChanged: (pass) {
                password = pass;
              }),
          ElevatedButton(
            child: const Text('ログイン'),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              onPrimary: Colors.white,
            ),
            onPressed: () {
              //ログイン処理
              bool loginCheck = false; //APIでログインの処理
              //チェック用仮処理
              if (adminId.length == password.length) {
                loginCheck = true;
              }
              if (loginCheck) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => AdminSettingPage()));
              } else {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => AdminLoginPage()));
              }
            },
          ),
        ]));
  }
}
