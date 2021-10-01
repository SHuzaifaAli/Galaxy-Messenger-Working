import 'package:flutter/material.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({ Key? key }) : super(key: key);

  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ignore: avoid_unnecessary_containers
      body: Column(
        children: <Widget> [
          Row(
            children: const <Widget>[
              Expanded(
                child: ListTile(
                leading: Icon(Icons.person_rounded),
                title: Text('My Status'),
                subtitle: Text('Tap to add status'),
                // onTap: () {},
                ),
              ),
            ],
          ),
          Container(height: 40.0,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(6, 10, 0, 0),
          child: Text('Recent Update'),
          color: Colors.grey,
          ),
        const Center(
            child: Text('No Status in your saved contact', textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}