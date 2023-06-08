
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Core/Constant.dart';
import 'package:google_fonts/google_fonts.dart';
class Addtask extends StatelessWidget {
  final String? Title ;
   final String?Note ;
  const Addtask({Key? key, required this.Title , required this.Note}):super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  
      AppBar( backgroundColor: MyColor.myblue, 
      centerTitle: true , 
      title: const Text("Add Task" , style: TextStyle(fontSize: 25 ,  fontWeight: FontWeight.bold)),),
      body: Column(
        children: [Row(
          children: [
            Titlecontainer(),
          ],
        ),
        subTitlecontainer(),
        SizedBox(height: 30,),
        My_DIVIDER(),
        SizedBox(height: 30,),
        Button_container()
               ],
               ),
    );
  }
}

class Button_container extends StatelessWidget {
  const Button_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 500,height: 40,margin: EdgeInsetsDirectional.only(start: 8 , end: 8),
    decoration: BoxDecoration(color: MyColor.myblue , borderRadius: BorderRadiusDirectional.circular(15)),
    child:
     Add_Button());
  }
}

class My_DIVIDER extends StatelessWidget {
  const My_DIVIDER({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(color: Color.fromARGB(255, 209, 209, 209), thickness: 2,);
  }
}

class Add_Button extends StatelessWidget {

  const Add_Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
     onPressed: ()
     {Navigator.pop(context);},
      child: Text("Add" , style: GoogleFonts.abrilFatface(fontSize: 18) ));
  }
}
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