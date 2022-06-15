import 'package:flutter/material.dart';

class AdminRoomidSettingPage extends StatelessWidget {
  AdminRoomidSettingPage(this.roomId);
  String roomId;

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
                onPressed: () {}, //部屋IDの削除APIを叩く
                child: Text('削除'),
              ),
              ElevatedButton(
                onPressed: () {}, //部屋IDの追加APIを叩く
                child: Text('追加'),
              ),
            ],
          ),
        ]));
  }
}
