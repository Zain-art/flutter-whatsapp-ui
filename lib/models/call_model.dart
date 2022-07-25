import 'package:flutter/material.dart';

class CallModel {
  final String name;

  final String time;
  final String avatar;
  final Icon callType;
  static Icon callReceived=Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );static Icon callMissed=Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,
  );
  CallModel(
      {required this.name,
required this.callType,
        required this.time,
        required this.avatar});
}

List<CallModel> callData = [



  CallModel(
      name: 'zain khan',
callType: CallModel.callReceived,
      time: '12:23',
      avatar: 'images/chris.jpg'),
  CallModel(
      name: 'ali abbas',

      time: '5:23',
      avatar: 'images/zain.jpg', callType: CallModel.callMissed), CallModel(
      name: 'zain khan',
callType: CallModel.callReceived,
      time: '12:23',
      avatar: 'images/chris.jpg'),
  CallModel(
      name: 'ali abbas',

      time: '5:23',
      avatar: 'images/zain.jpg', callType: CallModel.callMissed), CallModel(
      name: 'zain khan',
callType: CallModel.callReceived,
      time: '12:23',
      avatar: 'images/chris.jpg'),
  CallModel(
      name: 'ali abbas',

      time: '5:23',
      avatar: 'images/zain.jpg', callType: CallModel.callMissed), CallModel(
      name: 'zain khan',
callType: CallModel.callReceived,
      time: '12:23',
      avatar: 'images/chris.jpg'),
  CallModel(
      name: 'ali abbas',

      time: '5:23',
      avatar: 'images/zain.jpg', callType: CallModel.callMissed), CallModel(
      name: 'zain khan',
callType: CallModel.callReceived,
      time: '12:23',
      avatar: 'images/chris.jpg'),
  CallModel(
      name: 'ali abbas',

      time: '5:23',
      avatar: 'images/zain.jpg', callType: CallModel.callMissed), CallModel(
      name: 'zain khan',
callType: CallModel.callReceived,
      time: '12:23',
      avatar: 'images/chris.jpg'),
  CallModel(
      name: 'ali abbas',

      time: '5:23',
      avatar: 'images/zain.jpg', callType: CallModel.callMissed), CallModel(
      name: 'zain khan',
callType: CallModel.callReceived,
      time: '12:23',
      avatar: 'images/chris.jpg'),
  CallModel(
      name: 'ali abbas',

      time: '5:23',
      avatar: 'images/zain.jpg', callType: CallModel.callMissed), CallModel(
      name: 'zain khan',
callType: CallModel.callReceived,
      time: '12:23',
      avatar: 'images/chris.jpg'),
  CallModel(
      name: 'ali abbas',

      time: '5:23',
      avatar: 'images/zain.jpg', callType: CallModel.callMissed), CallModel(
      name: 'zain khan',
callType: CallModel.callReceived,
      time: '12:23',
      avatar: 'images/chris.jpg'),
  CallModel(
      name: 'ali abbas',

      time: '5:23',
      avatar: 'images/zain.jpg', callType: CallModel.callMissed),
];
