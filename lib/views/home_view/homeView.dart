import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/consts/colors.dart';
import 'package:untitled/consts/consts.dart';
import 'package:untitled/resources/components/customTextfiled.dart';
import 'package:untitled/views/home_view/home.dart';
import 'package:untitled/views/profile/docprofile.dart';
import 'package:get/get.dart';


class Homepage extends StatelessWidget{
  final String username="Anirudh";
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors().appbar,
        title: Text("Welcome ${username}" ,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white60),),
      ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
       
             padding: EdgeInsets.all(14),
             color: Appcolors().appbar,
               child: Row(
                 children: [
                   Expanded(child: Textfiled(hint: "Search Doctor",textcolor: Colors.white,)),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.search,
                      color: Colors.white70,
                      )
                  )
                 ],
               )
           ),
           20.heightBox,
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [
       
                 SizedBox(
                   height: 90,
       
       
                   child: ListView.builder(
                     physics: BouncingScrollPhysics(),
                       scrollDirection: Axis.horizontal,
                       itemCount: 6,
                       itemBuilder: (BuildContext context,int index){
                         return GestureDetector(
                           onTap: (){},
                           child: Container(
                           width: 90,
                             decoration: BoxDecoration(
                               color: Colors.blueAccent,
       
                               borderRadius: BorderRadius.circular(12)
                             ),
                             margin: EdgeInsets.only(right: 5),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 children: [
       
       
                                   25.heightBox,
                                   Text(IconName[index] ,style: TextStyle(fontWeight: FontWeight.w500,color: CupertinoColors.white),)
                                 ],
                               ),
                             ),
                           ),
                         );
                       }
       
                   ),
                 ),
                 10.heightBox,
                 Align(
                   alignment: Alignment.centerLeft,
                   child: Text("Popular Doctors",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.w800,fontSize: 15)),
                 ),
                 15.heightBox,
                 SizedBox(
                   height: 200,
                   child: ListView.builder(
                     physics: BouncingScrollPhysics(),
                     itemCount: 3,
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (BuildContext Context,int index){
                         return GestureDetector(
                           onTap: (){
                             Get.to(()=>docprofile());
                           },
                           child: Container(
                             clipBehavior: Clip.hardEdge,
                             decoration: BoxDecoration(
                            color: Colors.white12,
                               borderRadius: BorderRadius.circular(15),
       
                             ),
                             margin: EdgeInsets.only(right: 8),
       
                             height: 160,
                             width: 150,
                             child: Column(
       
                               children: [
       
                                 Container(
                                   width: 150,
                                  height: 140,
                                  alignment: Alignment.center,
                                  color:Colors.blue,
                                   child: Image.asset(
                                       'assest/image/doc.png',
                                   width: 100,
                                   ),
                                 ),
                                 10.heightBox,
                                 Text("DOC NAME",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15),),
                                 5.heightBox,
                                 Text("Profeesion",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 10),)
                               ],
                             ),
                           ),
                         );
                       }
                   ),
                 ),
                 Align(
                   alignment: Alignment.centerRight,
       
                   child: GestureDetector(
                     onTap: (){}
                     ,
                       child: Text("View all",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.w800,fontSize: 15))),
                 ),
                  20.heightBox,
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(3,
                            (index) => Container(
                              height: 100,
                              width: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(11.0)
                              ),
                              child: Column(
                                children: [
                                  Image.asset('assest/image/logindoc.jpeg',width: 45,height: 45,),
                                  15.heightBox,
                                  Text("LAB TEST",style: TextStyle(fontWeight: FontWeight.w700,color: CupertinoColors.white),)
                                ],
                              ),
                            )
                    ),
       
       
                  )
               ],
             ),
           ),
       
         ],
       ),
     ),

    );

  }
}
