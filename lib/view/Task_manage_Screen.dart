import 'package:flutter/material.dart';
import 'package:flutter_application_3/view/Add%20_Task_screen.dart';
import 'package:flutter_application_3/Core/Constant.dart';
import 'package:flutter_application_3/Core/Lview_container.dart';
class Taskmanage extends StatefulWidget {
  const Taskmanage({super.key});

  @override
  State<Taskmanage> createState() => _TaskmanageState();
}

class _TaskmanageState extends State<Taskmanage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: SizedBox(
      width: 68,height: 68,
      child: My_Add_Button()),
        body: 
        Stack(children: [Container(
        color: MyColor.myblue,),
        Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [Padding(
            padding: const EdgeInsets.fromLTRB(8, 25, 8, 0),
            child: Row( children:
             [IconButton(onPressed: (){},icon:           
            IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: MyColor.mywhite,),iconSize: 30,))],),
          ),
          
           Container(
            margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
            child: CircleAvatar(backgroundColor:MyColor.mywhite, radius: 35 ,
            child: const Icon(Icons.bookmarks, size: 30,),
            )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 10, 0, 0),
              child: Text("All", style: TextStyle(color: MyColor.mywhite, fontSize: 20, fontWeight: FontWeight.w900),),
            ),Padding(
              padding: const EdgeInsets.fromLTRB(45, 5, 0, 0), 
              child: 
              Text("Tasks"  , style: TextStyle(color: MyColor.mywhite , fontSize: 20 , fontWeight: FontWeight.w900 ),),
            )
            ]
            ,),
        ),
        Container(height: MediaQuery.of(context).size.height * 0.63,
         decoration: BoxDecoration(color: MyColor.mywhite ,
          borderRadius: const BorderRadiusDirectional.only(topStart: Radius.circular(20),topEnd: Radius.circular(20))),
          child: ListView.builder(itemBuilder: (context, index) => const mycontainer(),itemCount: 1 , ),), 
        ], alignment: Alignment.bottomCenter),
    );
  }
}

class My_Add_Button extends StatelessWidget {
  const My_Add_Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(backgroundColor: MyColor.myblue,elevation: 8,
      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const Addtask(Note: '', Title: '',);
      },));},child: const Icon(Icons.add,size: 28,),);
  }
}