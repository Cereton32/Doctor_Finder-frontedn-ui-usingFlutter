import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/views/Singup_view/Singup_view.dart';
import 'package:untitled/views/Singup_view/cateogrydetails.dart';
import 'package:untitled/views/Singup_view/settingView.dart';
import 'package:untitled/views/categoryview.dart';
import 'package:untitled/views/home_view/home.dart';
import 'package:untitled/views/home_view/homeView.dart';
import 'package:untitled/views/login_view/login_view.dart';
import 'package:untitled/views/profile/docprofile.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
 const Myapp({super.key});

  @override
  Widget build(BuildContext context) {

    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginView(),
    );
  }

}