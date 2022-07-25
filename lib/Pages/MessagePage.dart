import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';
class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  ScrollController _scrollController=ScrollController();
  @override
  Widget build(BuildContext context) {
  SchedulerBinding.instance.addPostFrameCallback((timeStamp) { 
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  });
    return ListView(
      controller: _scrollController,
      children: [
        Bubble(
          alignment: Alignment.center,
          margin: BubbleEdges.only(top: 10),
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TODAY', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10,right: 8),
          radius: Radius.zero,
          alignment: Alignment.topRight,
          nipWidth: 8,
          nipHeight: 24,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.zero,
          alignment: Alignment.topLeft,
          nipWidth: 8,
          nipHeight: 24,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.elliptical(5.0, 10.0),
          alignment: Alignment.topRight,
          nipWidth: 30,
          nipHeight: 10,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.elliptical(5.0, 10.0),
          alignment: Alignment.topLeft,
          nipWidth: 30,
          nipHeight: 10,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.center,
          nip: BubbleNip.no,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TOMORROW', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.elliptical(5.0, 10.0),
          alignment: Alignment.topRight,
          nipWidth: 30,
          nipHeight: 10,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.elliptical(5.0, 10.0),
          alignment: Alignment.topLeft,
          nipWidth: 30,
          nipHeight: 10,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.center,
          nip: BubbleNip.no,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TOMORROW', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.elliptical(5.0, 10.0),
          alignment: Alignment.topRight,
          nipWidth: 30,
          nipHeight: 10,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.elliptical(5.0, 10.0),
          alignment: Alignment.topLeft,
          nipWidth: 30,
          nipHeight: 10,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.center,
          nip: BubbleNip.no,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TOMORROW', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.elliptical(5.0, 10.0),
          alignment: Alignment.topRight,
          nipWidth: 30,
          nipHeight: 10,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.elliptical(5.0, 10.0),
          alignment: Alignment.topLeft,
          nipWidth: 30,
          nipHeight: 10,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ), Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ), Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topRight,
          nip: BubbleNip.rightTop,
          color: Color.fromRGBO(225, 255, 199, 1.0),
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          radius: Radius.circular(20.0),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          child: Text('Hi, developer!'),
        ),

      ],
    );
  }
}
