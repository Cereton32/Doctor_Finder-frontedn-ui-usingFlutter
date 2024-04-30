import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/consts/consts.dart';

class settingView extends StatelessWidget{
  const settingView({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        title: Text("Setting",style: TextStyle(color: CupertinoColors.white,fontWeight: FontWeight.w600,fontSize: 25),),
        backgroundColor: Colors.blue,
    ),
    body: Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Image.asset('assest/image/doc.png',),
          ),
          title: Text("Username",style: TextStyle(fontWeight: FontWeight.w600),),
          subtitle: Text("USER_email@gmail.com"),
        ),
        Divider(),
        20.heightBox,
          ListView(
            shrinkWrap: true,
            children: List.generate(setting.length,
                    (index) =>ListTile(
                      onTap:(){} ,
                      leading: Icon(icons[index]),

                      title:Text(setting[index],style: TextStyle(fontWeight: FontWeight.w600),),

                    )
            ),
          ),

      ],
    ),
  );
  }

}