import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/consts/consts.dart';

class docprofile extends StatefulWidget{
  const docprofile({super.key});

  @override
  State<docprofile> createState() => _docprofileState();
}

class _docprofileState extends State<docprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Doctor Name",style: TextStyle(color: CupertinoColors.white,fontWeight: FontWeight.w600,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 100,
              //color: Colors.red,
              child: Row(

                children: [
                  CircleAvatar(
                    radius: 35,
                    child: Image.asset('assest/image/doc.png',
                    width: 10000,),
                  ),
                  20.widthBox,
                  Column(

                    children: [
                      10.heightBox,
                      Text("Doctor Name",style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w600,fontSize: 25),),
                      5.heightBox,
                      Text("Specialist",style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w600,fontSize: 25),),
                    ],
                  ),
                  15.widthBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      15.heightBox,
                      VxRating(onRatingUpdate: (value){},
                        count: 5,
                        value: 0,
                        stepInt: true,
                        size: 25,
                        //color:Colors.lightBlueAccent,
                      ),
                      10.heightBox,

                      GestureDetector(
                        onTap: (){},
                        child: Align(
                          alignment: Alignment.bottomRight,
                            child: Text("See all Review")),
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        const  Divider(
            height: 20,
             thickness: 12,
          ),
          Expanded(
            flex : 6,
            child: Column(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge ,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  //color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                     leading: Icon(Icons.call),
                     title: Text("Mobile Number",style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w700,fontSize: 20),),

                      subtitle : Text("9934601244",style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w400,fontSize: 20),),
                    ),


                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 12,
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text("About",style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w700,fontSize: 20),),

                  subtitle : Text("XYZ",style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w400,fontSize: 20),),
                ),

              Divider(
                height: 20,
                thickness: 12,
              ),
              ListTile(
                leading: Icon(Icons.cabin),
                title: Text("Experience",style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w700,fontSize: 20),),

                subtitle : Text("XYZ",style: TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              ]
            )
            ),

        ],
      ),
    );
  }
}