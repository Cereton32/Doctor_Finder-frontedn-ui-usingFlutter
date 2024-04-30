import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class button1 extends StatelessWidget{
  final String bName;
  final Function()?onTap;
  const button1({super.key,required this.bName,this.onTap});




  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: context.screenWidth-250,
      child: ElevatedButton(

          onPressed: (){
             onTap!();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape:  StadiumBorder()
          ),
          child: Text(bName,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22,color: Colors.white),)
    )
    );
  }

}