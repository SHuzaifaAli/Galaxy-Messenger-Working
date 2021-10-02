import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({ Key? key }) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#202020'),
        leading: const Icon(Icons.arrow_back,),
        title: Text('Setting',style: TextStyle(color: Colors.grey[200],fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
             leading: Icon(Icons.account_circle_rounded, size: 40.0,),
             title: Text('Hamza'),
             subtitle: Text('+920000000000'),
             trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
                ),
            Divider(
              color: Colors.grey[500],
            ),
            const ListTile(
            leading: Icon(
              Icons.account_circle_rounded, 
              size: 20.0,
              color: Colors.teal,),
            title: Text(
              'Edit Profile'
              ),
            subtitle: Text(
              'Change Display Name & Photo'
              ),
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
              ),
            const  ListTile(
            leading: Icon(
              Icons.rate_review_outlined,
              size: 20.0,
              color: Colors.teal,),
            title: Text('Feedback'),
            subtitle: Text('Give suggestion about app'),
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
              ),
            const ListTile(
            leading: Icon(Icons.star_outline_outlined, 
            size: 20.0,
            color: Colors.teal,),
            title: Text('Rate App'),
            subtitle: Text('leave your review'),
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
              ),
            const ListTile(
            leading: Icon(Icons.notifications_outlined, 
            size: 20.0,
            color: Colors.teal,),
            title: Text('Notification'),
            subtitle: Text('Promotion Events and Alert'),
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
              ),
            const ListTile(
            leading: Icon(Icons.help_outline_outlined, 
            size: 20.0,
            color: Colors.teal,
            ),
            title: Text('Privacy Policy'),
            subtitle: Text('Know How we process your data'),
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
              ),
            const ListTile(
            leading: Icon(Icons.lock_outlined, 
            size: 20.0,
            color: Colors.teal,),
            title: Text('Invite Friend'),
            // subtitle: Text('+920000000000'),
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
              ),
              Divider(color: Colors.grey[500],),
              const ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  size: 40.0,
                  color: Colors.red,
                  ),
                  title: Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
              )
          ],
      
        ),
      ),

    );
  }
}