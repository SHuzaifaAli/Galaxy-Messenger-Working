import 'dart:async';
import 'package:flutter/material.dart';
//  import 'package:splashscreen/splashscreen.dart';
 import 'package:teb_bar/Screens/app_main_screen';
 


class SplashScreenWork extends StatefulWidget {
  const SplashScreenWork({ Key? key }) : super(key: key);

  @override
  _SplashScreenWorkState createState() => _SplashScreenWorkState();
}

class _SplashScreenWorkState extends State<SplashScreenWork> {
  @override@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6),
          ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => 
                                                          const AppScreen(),
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    return

    Container(
      color: Colors.teal,
      child:Image.asset("assets/images/splash_screen.jpeg",fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,),
    );
  }
}



// class SplashScreenWork extends StatelessWidget {
//   const SplashScreenWork({
//     Key? key,
//   }) : super(key: key);
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   Timer(Duration(seconds: 3),
//   //         ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => 
//   //                                                         const AppScreen(),
//   //                                                        )
//   //                                      )
//   //        );
//   // }
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Container(
//   //     color: Colors.white,
//   //     child:FlutterLogo(size:MediaQuery.of(context).size.height)
//   //   );
//   // }
// }
// }

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:splashscreen/splashscreen.dart';
// void main() {
// runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	title: 'Splash Screen',
// 	theme: ThemeData(
// 		primarySwatch: Colors.green,
// 	),
// 	home: Splash2(),
// 	debugShowCheckedModeBanner: false,
// 	);
// }
// }
// class Splash2 extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
// 	return SplashScreen(
// 	seconds: 6,
// 	navigateAfterSeconds: new SecondScreen(),
// 	title: new Text('GeeksForGeeks',textScaleFactor: 2,),
// 	image: new Image.network('https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
// 	loadingText: Text("Loading"),
// 	photoSize: 100.0,
// 	loaderColor: Colors.blue,
// 	);
// }
// }
// class SecondScreen extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
// 	return Scaffold(
// 	appBar: AppBar(title:Text("GeeksForGeeks")),
// 	body: Center(
// 		child:Text("Home page",textScaleFactor: 2,)
// 	),
// 	);
// }
// }

