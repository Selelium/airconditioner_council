import 'package:flutter/material.dart';
import 'admin_roomid_list_page.dart';

class AdminRoomidSettingPage extends StatelessWidget {
  AdminRoomidSettingPage(this.roomId);
  String roomId;
  bool notification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("部屋ID個別管理")),
        body: Column(children: [
          TextField(
              controller: TextEditingController(text: roomId),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: '部屋id'),
              onChanged: (num) {
                roomId = num;
              }),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('削除しました'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminRoomidListPage()));
                }, //部屋IDの削除APIを叩く
                child: Text('削除'),
              ),
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('追加しました'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminRoomidListPage()));
                }, //部屋IDの追加APIを叩く
                child: Text('追加'),
              ),
            ],
          ),
          SwitchListTile(
              title: Text('この部屋の通知を有効にする'),
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
