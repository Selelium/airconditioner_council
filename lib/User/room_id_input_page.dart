import 'package:flutter/material.dart';
import 'vote_page.dart';
import '../admin/admin_login_page.dart';

class RoomIdInputPage extends StatelessWidget {
  String roomId = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("部屋ID入力")),
        body: Column(
          children: [
            TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: '部屋id'),
                onChanged: (num) {
                  roomId = num;
                }),
            ElevatedButton(
              child: const Text('登録'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                onPrimary: Colors.white,
              ),
              onPressed: () {
                if (roomId.length == 6) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VotePage(roomId)));
                } else {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RoomIdInputPage()));
                }
              },
            ),
          ],
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.settings),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AdminLoginPage()));
          },
        ));
  }
}
