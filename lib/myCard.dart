import 'package:flutter/material.dart';
import 'package:testproject/sec_screen.dart';

class myCard extends StatelessWidget {
  Image img;
   myCard({super.key,required this.img});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => second(),));},
      child: Card(
          elevation: 10,
          shadowColor: Colors.black,
          color: Colors.grey[100],
          child: SizedBox(
              width: 100,
              height: 100,
              child: Padding(
                  padding:  EdgeInsets.all(1),
                  child:img))),
    );

  }
}
