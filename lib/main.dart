import 'package:flutter/material.dart';
import 'package:teb_bar/Screens/call_screen.dart';
import 'Screens/chat_screen.dart';
import 'Screens/status_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galaxy Mesenger',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Galaxy Messenger'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(195,132,0,0),
            bottom: const TabBar(
              labelStyle: TextStyle(fontSize:20),
              indicatorColor: Colors.amberAccent,
              

              tabs: [
                Tab(icon: Icon(Icons.search),),
                Tab(text: 'Chat',),
                Tab(text: 'Status',),
                Tab(text: 'Call',),
              ],
            ),
            title: const Text('Galexy Messenger'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.search ),
              ChatsScreen(),
              StatsScreen(),
              CallScreen(),
            ],
          ),
      
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
