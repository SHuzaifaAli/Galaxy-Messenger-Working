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
        leading:  IconButton(
          icon:const Icon(Icons.arrow_back,), 
          onPressed: () => Navigator.of(context).pop(),
          ),
        title: Text('Setting',style: TextStyle(color: Colors.grey[200],fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             ListTile(
             leading:const Icon(Icons.account_circle_rounded, size: 40.0,),
             onTap: () {}, // Handle your onTap here. 
             title:const Text('Hamza'),
             subtitle:const Text('+920000000000'),
             trailing:const Icon(Icons.edit,color: Colors.teal,size: 30.0,),
                ),
            Divider(
              color: Colors.grey[500],
            ),
             ListTile(
            leading:const Icon(
              Icons.account_circle_rounded, 
              size: 20.0,
              color: Colors.teal,),
            title:const Text(
              'Edit Profile'
              ),
            subtitle:const Text(
              'Change Display Name & Photo'
              ),
              onTap: () {}, // Handle your onTap here. 
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
              ),
              ListTile(
            leading:const Icon(
              Icons.rate_review_outlined,
              size: 20.0,
              color: Colors.teal,),
            title:const Text('Feedback'),
            subtitle:const Text('Give suggestion about app'),
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
            onTap: () {}, // Handle your onTap here. 

              ),
             ListTile(
            leading:const Icon(Icons.star_outline_outlined, 
            size: 20.0,
            color: Colors.teal,),
            title:const Text('Rate App'),
            subtitle:const Text('leave your review'),
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
            onTap: () {},
              ),
             ListTile(
            leading:const Icon(Icons.notifications_outlined, 
            size: 20.0,
            color: Colors.teal,),
            title:const Text('Notification'),
            subtitle:const Text('Promotion Events and Alert'),
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
            onTap: () {},
              ),
             ListTile(
            leading:const Icon(Icons.help_outline_outlined, 
            size: 20.0,
            color: Colors.teal,
            ),
            title:const Text('Privacy Policy'),
            subtitle:const Text('Know How we process your data'),
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
            onTap: () {},
              ),
             ListTile(
            leading:const Icon(Icons.lock_outlined, 
            size: 20.0,
            color: Colors.teal,),
            title:const Text('Invite Friend'),
            // subtitle: Text('+920000000000'),
            // trailing: Icon(Icons.edit,color: Colors.teal,size: 30.0,),
            onTap: () {},
              ),
              Divider(color: Colors.grey[500],),
               ListTile(
                 onTap: () {},
                leading:const Icon(
                  Icons.logout_outlined,
                  size: 40.0,
                  color: Colors.red,
                  ),
                  title:const Text(
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