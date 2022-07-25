import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Pages/MessagePage.dart';

import '../models/chat_model.dart';

class chatDetailPage extends StatefulWidget{
  chatDetailPage({Key? key}):super(key: key);
  @override
  _chatDetailState createState()=> _chatDetailState();
}
class _chatDetailState extends State<chatDetailPage>{
  @override
  Widget build(BuildContext context){
    return
       Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/chris.jpg'),
              ),
              Padding(padding: EdgeInsets.only(left: 6.0),
              child: Text('Zain khan'),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: (){
                print('search button clicked..');
              },
              icon:Icon(Icons.video_call),
            ),
            IconButton(
              onPressed: (){
                print('search button clicked..');
              },
              icon:Icon(Icons.call),
            ),
            IconButton(
              onPressed: (){
                print('search button clicked..');
              },
              icon:Icon(Icons.more_vert),
            ),
          ],
        ),
         body: Column(
           children: [
             Expanded(child:
             MessagePage(),
             ),
             Container(
                 alignment: Alignment.bottomCenter,
                 padding: EdgeInsets.all(16.0),

                 child: Row(
                   children:[
    Flexible(child: TextFormField(
      minLines:1,
      maxLines:5,
      decoration:InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.grey, width: 1.0),

      ),
      enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(color: Colors.grey, width: 1.0),

    ),
        hintText: 'Type a message',
    ),

    ),
    ),
    ],
                 )),
           ],
         ),
      );

  }
}