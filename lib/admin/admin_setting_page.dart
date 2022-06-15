import 'package:flutter/material.dart';
import 'admin_roomid_list_page.dart';
import 'admin_api_page.dart';

class AdminSettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('管理者設定ページ'),
        ),
        body: Column(children: [
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text('部屋ID管理'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminRoomidListPage()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('API･通知管理'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminApiPage()));
                  },
                ),
              ),
            ],
          ),
        ]));
  }
}
