import 'package:flutter/material.dart';
import '../admin/admin_login_page.dart';
import 'voting_result.dart';

class VotePage extends StatelessWidget {
  VotePage(this.roomId);
  String roomId;

  var presetTemp = 20.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("投票ページ")),
        body: Column(
          children: [
            Text("現在の設定温度:" + presetTemp.toString() + "℃",
                style: TextStyle(fontSize: 40)),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VotingResult("寒い")));
                  }, //設定温度高の投票APIを叩く
                  child: Text('寒い'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VotingResult("ちょうどいい")));
                  }, //設定温度維持の投票APIを叩く
                  child: Text('ちょうどいい'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VotingResult("暑い")));
                  }, //設定温度低の投票APIを叩く
                  child: Text('暑い'),
                ),
              ],
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
