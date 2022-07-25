import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/call_model.dart';
class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
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
                backgroundImage: AssetImage(callData[index].avatar),
              ),
              title: Text(
                callData[index].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              subtitle: Row(
                children: [
                  Container(
                    child:callData[index].callType,
                  ),
                  Text(
                    callData[index].time,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.call,
                size: 25,
                color: Colors.green,
              ),
              onTap: () {
                 print('chall details open');
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => chatDetailPage()));
               },
            ),
          ],
        ),
        itemCount: callData.length,
      ),
    );
  }
}
