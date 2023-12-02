import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class car extends StatefulWidget {
  List img=[];

   car({super.key, required this.img});

  @override
  State<car> createState() => _carState();
}

class _carState extends State<car> {
  int cindex = 0;
  @override
  Widget build(BuildContext context) {
      return Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 250,onPageChanged: (index,reason){setState(() {cindex = index;});}),
            items: widget.img.map((i) {
              return Builder(
                builder: (BuildContext context) {
                             return Container(
                                              width: MediaQuery.of(context).size.width,
                                              margin: EdgeInsets.symmetric(horizontal: 5),
                                              decoration: BoxDecoration(
                                                                color: Colors.blue,
                                                                       ),
                                              child: Image.asset(i,fit: BoxFit.cover),
                                              );
                },
              );
            }).toList(),

          ),
DotsIndicator(dotsCount: widget.img.length,position: cindex,)
        ],
      );
  }
}
