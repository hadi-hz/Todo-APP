import 'package:flutter/material.dart';
import 'package:flutter_application_3/Core/Constant.dart';

class mycontainer extends StatelessWidget {
  const mycontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100 ,margin: const EdgeInsets.all(8), 
      decoration:
       BoxDecoration(
        color: const Color.fromARGB(255, 236, 234, 234) ,
         borderRadius: BorderRadius.circular(10),),
         child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
          children: [Row(
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.only(start: 10 , end: 10),
                child: Text("Task" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , ),),
                
              ),
              SizedBox(height: 50,child: VerticalDivider(thickness: 2,color: MyColor.myblack,)),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text("Title :" , style: TextStyle(fontSize:20 , fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                     Text("Note :" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(width: 200,),
              Column(children: [IconButton(onPressed: (){}, icon: Icon(Icons.edit ,size: 22,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete , size: 22,))
              ],
              )
             
            ],
          )],
          
          ),

    );
  }
}