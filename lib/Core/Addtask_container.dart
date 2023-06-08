import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../view/Add _Task_screen.dart';
class Titlecontainer extends StatelessWidget {
  const Titlecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.fromLTRB(10, 30, 10, 0),width: 200,
        decoration: BoxDecoration(color: Color(0xFFFAFAFA),borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
            decoration: 
            InputDecoration(  
              label: 
              Text("Title" , 
              style: GoogleFonts.abrilFatface(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),),
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))));
  }
}
class subTitlecontainer extends StatelessWidget {
  const subTitlecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
        decoration: BoxDecoration(color: const Color(0xFFFAFAFA),borderRadius: BorderRadius.circular(10)),
          child: TextFormField(maxLines: 2,
            decoration: 
            InputDecoration(   
              hintText: "Note",hintStyle: GoogleFonts.abrilFatface(fontSize: 18 , color: Color.fromARGB(255, 175, 176, 177)),
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))));
  }
}