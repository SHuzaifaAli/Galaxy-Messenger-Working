import 'package:flutter/material.dart';


class CallScreen extends StatefulWidget {
  const CallScreen({ Key? key }) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const <Widget>[
            Icon(Icons.call_rounded,color: Colors.grey,size: 50,),
            Text('No Calls',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),),
            Text('All video & audio call history will be shown here.'),

          ],
        ),
      ),
    );
  }
}