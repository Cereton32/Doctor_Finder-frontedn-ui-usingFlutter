import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/consts/consts.dart';
import 'package:get/get.dart';
import 'package:untitled/views/profile/docprofile.dart';

class categorydetails extends StatelessWidget{
  const categorydetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Category",style: TextStyle(color: CupertinoColors.white,fontWeight: FontWeight.w600,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                crossAxisCount: 2,
                mainAxisExtent: 250,
                mainAxisSpacing: 15,
                crossAxisSpacing: 12
            ),
            itemCount:10,
            itemBuilder: (BuildContext context,int index){
              return GestureDetector(
                onTap: (){
                  Get.to(()=>docprofile());
                },
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assest/image/doc2.png',
                        width:70,
                        ),
                      const Divider(
                        color: Colors.white10,
                      ),


                      Text("DOC NAME",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),

                      Text("ABOUT",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 15,color: Colors.white),),
                    ],
                  ),
                ),
              );
            }
        ),
      ),
    );
  }

}