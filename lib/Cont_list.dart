import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  Color col;
  Image ico;
   Cont({super.key,required this.col,required this.ico});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:col ,),
          //borderRadius: BorderRadius.all(Radius.circular(50),)),
      width: 50,
      height: 50,
      margin: EdgeInsets.all(10),
      child:ico,

    );
  }
}

