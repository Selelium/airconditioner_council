import 'package:flutter/material.dart';
import 'admin_setting_page.dart';

class AdminApiPage extends StatelessWidget {
  String ApiUrl = "https:/example.com/api?settings=aircoun";
  bool notification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("API･通知管理")),
        body: Column(children: [
          TextField(
              controller: TextEditingController(text: ApiUrl),
              decoration: InputDecoration(labelText: 'API'),
              onChanged: (url) {
                ApiUrl = url;
              }),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('更新しました'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminSettingPage()));
                }, //部屋IDの追加APIを叩く
                child: Text('更新'),
              ),
            ],
          ),
          SwitchListTile(
              title: Text('通知を有効にする'),
              value: notification,
              onChanged: (bool value) {
                notification = value;

                //通知設定処理
                if (notification) {
                } else {}
              }),
        ]));
  }
}
