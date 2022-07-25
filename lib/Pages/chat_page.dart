import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Pages/chat_detail_page.dart';

import '../models/chat_model.dart';

class chatPage extends StatefulWidget {
  chatPage({Key? key}) : super(key: key);
  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) => Column(
          children: [
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                backgroundImage: AssetImage(chatData[index].avatar),
              ),
              title: Text(
                chatData[index].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              subtitle: Text(
                chatData[index].message,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              trailing: Text(
                chatData[index].time,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                // print('chat details open');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => chatDetailPage()));
              },
            ),
          ],
        ),
        itemCount: chatData.length,
      ),
    );
  }
}
