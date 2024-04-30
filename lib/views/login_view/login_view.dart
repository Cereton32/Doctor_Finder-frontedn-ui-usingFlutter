import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled/consts/consts.dart';
import 'package:untitled/resources/components/button.dart';
import 'package:untitled/resources/components/customTextfiled.dart';
import 'package:untitled/views/Singup_view/Singup_view.dart';
import 'package:untitled/views/home_view/home.dart';
import 'package:untitled/views/home_view/homeView.dart';


class loginView extends StatelessWidget{
  const loginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(child: Container(

              child: Padding(
                padding:EdgeInsets.only(top: 36,bottom: 22),
                child: Image.asset('assest/image/logindoc.jpeg'),
              ),
            )),
            Expanded(
                flex: 2,
                child: Container(

                  child:SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Welcome Back!",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
                          5.heightBox,
                          Text("We're excited to have you back",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                          35.heightBox,
                          Textfiled(hint: "Enter Your mail",),
                          10.heightBox,
                          Textfiled(hint: "Enter Your Password",),
                          20.heightBox,
                          Align(
                            alignment: Alignment.centerRight,

                          child: Text("Forget password"),
                          ),
                          10.heightBox,

                         button1(bName : 'Login',onTap:  (){
                           Get.to(()=> const homenav());
                         },),
                          10.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?"),
                              10.widthBox,
                              GestureDetector(
                                onTap: (){
                                  Get.to(()=> const SignupView());
                                },
                                child: Text("Sing up" ,style: TextStyle(fontWeight: FontWeight.w600),),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
            )),

            

          ],
        ),
      ),
    );
  }

}