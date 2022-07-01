import 'package:flutter/material.dart';

class VotingResult extends StatelessWidget {
  VotingResult(this.result);
  String result;
  int vote1 = 20;
  int vote2 = 40;
  int vote3 = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("投票結果")),
      body: Center(
        child: Column(
          children: [
            Text(result + "に投票しました", style: TextStyle(fontSize: 35)),
            Text("寒い" + vote1.toString() + "%", style: TextStyle(fontSize: 25)),
            Text("ちょうどいい" + vote2.toString() + "%",
                style: TextStyle(fontSize: 25)),
            Text("暑い" + vote3.toString() + "%", style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
