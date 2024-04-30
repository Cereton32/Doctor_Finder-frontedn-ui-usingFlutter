import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/consts/consts.dart';
import 'package:untitled/resources/components/customTextfiled.dart';

class Textfiled extends StatefulWidget{
  final  String hint;
  final Color textcolor;
  const Textfiled({super.key, required this.hint,this.textcolor=Colors.black});



  @override
  State<Textfiled> createState() => _TextfiledState();
}

class _TextfiledState extends State<Textfiled> {
  @override
  Widget build(BuildContext context) {
    return  Form(
      child: TextFormField(
       cursorColor: Colors.black87,
        decoration: InputDecoration(
          isDense: true,
          enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.black87
            )
          ),
          focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  color: Colors.black87
              )
          ),
          hintStyle:TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: widget.textcolor),
          hintText: widget.hint,
          border: OutlineInputBorder(),

        ),
      ),

    );
  }
}
