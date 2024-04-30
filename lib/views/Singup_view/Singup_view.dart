import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled/consts/consts.dart';
import 'package:untitled/resources/components/button.dart';
import 'package:untitled/resources/components/customTextfiled.dart';
import 'package:untitled/views/home_view/homeView.dart';
import 'package:untitled/views/login_view/login_view.dart';
import 'package:untitled/views/home_view/home.dart';


class SignupView extends StatelessWidget{
  const SignupView({super.key});
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
                child: Image.asset('assest/image/singUp.png'),
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
                            Text(AppString.SignUP,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),
                            textAlign: TextAlign.center,
                            ),
                            15.heightBox,

                            Textfiled(hint: "Full name",),
                            10.heightBox,
                            Textfiled(hint: "E-Mail",), 
                            20.heightBox,
                            Textfiled(hint: "Password",),
                            20.heightBox,

                            button1(bName : 'Signup',onTap: (){
                              Get.to(()=>homenav());
                            },),
                            10.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?"),
                                10.widthBox,
                                GestureDetector(
                                  onTap: (){
                                    Get.to(()=>loginView());
                                  },
                                  child: Text("Login"),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                ))


          ],
        ),
      ),
    );
  }

}