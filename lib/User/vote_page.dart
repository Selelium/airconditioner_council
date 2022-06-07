import 'dart:ffi';

import 'package:flutter/material.dart';

class VotePage extends StatelessWidget {
  VotePage(this.roomId);
  String roomId;

  var presetTemp = 20.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("投票ページ")),
        body: Column(children: [
          Text("現在の設定温度:" + presetTemp.toString() + "℃",
              style: TextStyle(fontSize: 40)),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {}, //設定温度高の投票APIを叩く
                child: Text('寒い'),
              ),
              ElevatedButton(
                onPressed: () {}, //設定温度維持の投票APIを叩く
                child: Text('ちょうどいい'),
              ),
              ElevatedButton(
                onPressed: () {}, //設定温度低の投票APIを叩く
                child: Text('暑い'),
              ),
            ],
          ),
          FloatingActionButton(
            tooltip: 'Action!',
            child: Icon(Icons.settings),
            onPressed: () {},
          ),
        ]));
  }
}
