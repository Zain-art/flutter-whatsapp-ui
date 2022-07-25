import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/status_page.dart';
class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
            backgroundImage: AssetImage('images/nofoundimage.png'),
          ),

          title: Text(
            'my status',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          subtitle:
              Text(
               'Tap to Add',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
          onTap: (){
            print('my onw status detail open...');
          },

    ),
        Divider(),
        Padding(padding:
        EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('recent updates',
            textAlign:TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,

            ),
            ),
            ),
          ),
        Flexible(child: ListView.builder(
          itemCount: statusData.length,
          itemBuilder: (context ,index)=>Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  backgroundImage: AssetImage(statusData[index].avatar),
                ),
                title: Text(
                 statusData[index].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                subtitle: Text(
                  statusData[index].time,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                onTap: (){
                  print('status details openn..');
                },
              ),
              Divider(
                height: 10,
              ),
            ],
          ),
        ))

            ],
          );

  
  }
}
