import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/consts/consts.dart';
import 'package:untitled/views/Singup_view/cateogrydetails.dart';
import 'package:get/get.dart';



class categoryView extends StatelessWidget{
  const categoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Spaciality",style: TextStyle(color: CupertinoColors.white,fontWeight: FontWeight.w600,fontSize: 25),),
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
          itemCount: IconName.length,
          itemBuilder: (BuildContext context,int index){
              return GestureDetector(
                onTap: (){
                  Get.to(()=>categorydetails());
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
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset('assest/icons/eye.png',
                      width:60,
                      color: Colors.white,),
                    ),
                    const Divider(
                      color: Colors.white10,
                    ),

                    15.heightBox,
                    Text(IconName[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                    5.heightBox,
                    Text("13 Specialist",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 15,color: Colors.white),),
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