import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegestrationScreen extends StatefulWidget {
  const RegestrationScreen({ Key? key }) : super(key: key);

  @override
  _RegestrationScreenState createState() => _RegestrationScreenState();
}

class _RegestrationScreenState extends State<RegestrationScreen> {

final myNameTextController = TextEditingController();
final myNumberTextController = TextEditingController();


  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myNameTextController.dispose();
    myNumberTextController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellowAccent, Colors.greenAccent])),
      child: Scaffold(
          // By defaut, Scaffold background is white
          // Set its value to transparent
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_img.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children:<Widget>[
              const SizedBox(
                height: 28,
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset('name'),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'GALAXY MESSENGER',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: HexColor('#885c00'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Clear voice & video call",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: HexColor('#885c00'),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                padding:const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: myNameTextController,
                      keyboardType: TextInputType.text,
                      style:const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Enter Your Name',
                        prefixIcon: const Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                            borderSide:const  BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    IntlPhoneField(
                      decoration: InputDecoration( //decoration for Input Field
                          labelText: 'Phone Number',
                          enabledBorder: OutlineInputBorder(
                            borderSide:const  BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide:const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        ),
                      initialCountryCode: 'US', //default contry code, US
                      onChanged: (phone) {
                          //when phone number country code is changed
                          print(phone.completeNumber); //get complete number
                          print(phone.countryCode); // get country code only
                          print(phone.number); // only phone number
                        },
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}