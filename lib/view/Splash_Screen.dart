import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/view/Task_manage_Screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Taskmanage(),));}
    
    
    );
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter,children: [Column
      (children:
       [Image.asset("assets/images/photo2.png"),
       ])]),
    );
  }
}