import 'package:flutter/material.dart';
import 'admin_roomid_setting_page.dart';

class AdminRoomidListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('部屋ID管理'),
      ),
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text('部屋ID:123456'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AdminRoomidSettingPage("123456")));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('部屋ID:789123'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AdminRoomidSettingPage("789123")));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AdminRoomidSettingPage("")));
        },
      ),
    );
  }
}
