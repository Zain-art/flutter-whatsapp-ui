import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Pages/call_page.dart';
import 'package:whatsapp_ui/Pages/status_page.dart';

import './Pages/my_home_page.dart';
import 'Pages/chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor:Colors.green,
         primarySwatch: Colors.green,
      accentColor:Color(0xFF151026),
      ),
      home: const MyHomePage(title: 'Whatsapp UI fas'),
    );
  }
}
// import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4,initialIndex: 1);
    _tabController.addListener(_handleTabSelection);
  }
  // @override
  // void initState(){
  //   _tabController=TabController(length: 4, vsync: this,initialIndex: 1).addListener(() {
  //     setState((){});
  //     print('whataspp print...');
  //   });
  //
  //
  //
  //   super.initState();
  // }
  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {
        _currentIndex = _tabController.index;
      });
    }
  }
  final List<Tab>topTabs=<Tab>[
    Tab(icon: Icon(Icons.camera_alt),),
    Tab(text: 'CHATS',),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];
  // final List<IconButton>icontop=<Icon>[
  //   IconButton(onPressed: (){}, icon:Icon(Icons.search),),
  // ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          actions: [
            IconButton(
              onPressed: (){
                print('search button clicked..');
              },
              icon:Icon(Icons.search),
            ), IconButton(
              onPressed: (){
                print('three dot button clicked');
              },
              icon:Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            tabs: topTabs,
            controller: _tabController,
            indicatorColor: Colors.white,


          ),
        ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('camera'),
          chatPage(),
          StatusPage(),
         CallPage(),
        ],
      ),
      floatingActionButton: _getFloatButton(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
  _getFloatButton(){
    if(_tabController.index==1){
      return FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.message,
        color: Colors.white,
        ),
        onPressed: ()=>print('open chat contact'),);

    } else if(_tabController.index==2){
      return FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.camera_alt,
          color: Colors.white,
        ),
        onPressed: ()=>print('open message '),);

    }else if(_tabController.index==3){
      return FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.call,
          color: Colors.white,
        ),
        onPressed: ()=>print('open call '),);

    }
    if(_tabController.index==0){
      return FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.camera_alt,
          color: Colors.white,
        ),
        onPressed: ()=>print('open chat contact'),);

    }
  }
}


