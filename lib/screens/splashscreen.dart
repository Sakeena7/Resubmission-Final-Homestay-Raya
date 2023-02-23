import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user.dart';
import 'package:http/http.dart' as http;

import 'loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (content) => const LoginScreen ())));
  }
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center,children:[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splashscreen.jpg'),
              fit: BoxFit.cover ))),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            SizedBox(
              height: 10,
              ),
            Center(
              child: Text("DANDELION'S",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
             ),
            ),
            Center(
              child: Text("HOMESTAY RAYA",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
             ),
            ),
             SizedBox(
              height: 40, width: 40, child: 
              CircularProgressIndicator()),
              Text(
                "Dandelion.inc",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
             
            ],
          ),
        ),
      ]),
    );
    
  }

  

}