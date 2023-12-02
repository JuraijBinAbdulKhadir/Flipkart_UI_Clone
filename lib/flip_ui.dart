
import 'package:flutter/material.dart';
import 'package:testproject/myCard.dart';

import 'Cont_list.dart';
import 'carousel.dart';

class Flip extends StatefulWidget {
  const Flip({super.key});

  @override
  State<Flip> createState() => _FlipState();
}

class _FlipState extends State<Flip> {
  TextEditingController t1 = TextEditingController();
  bool swval = false;
  List img = [
    'Assets/image/slide_img/1.jpg',
    'Assets/image/slide_img/2.jpg',
    'Assets/image/slide_img/3.jpg',
    'Assets/image/slide_img/4.jpg',
    'Assets/image/slide_img/5.jpg',
    'Assets/image/slide_img/6.jpg',
    'Assets/image/slide_img/7.jpg',
    'Assets/image/slide_img/8.jpg',
    'Assets/image/slide_img/9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          leading: Image.asset('Assets/image/logo/logo.png'),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 75,
                height: 40,
              ),
              Text('Flip_Demo',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          backgroundColor: Colors.black45,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 5),
                Container(
                  child: Row(
                    children: [
                      //SizedBox(width: 10),
                      Switch(
                          value: swval,
                          onChanged: (value) {
                            setState(() {
                              swval = value;
                            });
                          }),
                      // SizedBox(width: 10,),


                                Container(width: 300,height: 50,
                                  child: TextField(
                                    controller: t1,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.search),
                                      suffixIcon: Icon((Icons.mic),),
                                      hintText: "SEARCH",
                                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                                    ),
                                  ),
                                ),



                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                car(img: img),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Cont(col: Colors.white70, ico: Image.asset('Assets/image/icons/cam.jpg')),
                      Cont(col: Colors.white70, ico: Image.asset('Assets/image/icons/emi.jpg')),
                      Cont(col: Colors.white70, ico: Image.asset('Assets/image/icons/frdrop.jpg')),
                      Cont(col: Colors.white70, ico: Image.asset('Assets/image/icons/lvshop.jpg')),
                      Cont(col: Colors.white70, ico: Image.asset('Assets/image/icons/money.jpg')),
                      Cont(col: Colors.white70, ico: Image.asset('Assets/image/icons/ngen.jpg')),
                      Cont(col: Colors.white70, ico: Image.asset('Assets/image/icons/pks.jpg')),
                      Cont(col: Colors.white70, ico: Image.asset('Assets/image/icons/plus.jpg')),
                      Cont(col: Colors.white70, ico: Image.asset('Assets/image/icons/spoyl.jpg')),
                    ],
                  ),
                ),
                Row(mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    Text('RECENTLY VIEWED:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      myCard(img: Image.asset('Assets/image/recents/1.jpg')),
                      myCard(img: Image.asset('Assets/image/recents/2.jpg')),
                      myCard(img: Image.asset('Assets/image/recents/3.jpg')),
                      myCard(img: Image.asset('Assets/image/recents/4.jpg')),
                      myCard(img: Image.asset('Assets/image/recents/5.jpg')),
                      myCard(img: Image.asset('Assets/image/recents/6.jpg')),
                      myCard(img: Image.asset('Assets/image/recents/7.jpg')),
                    ],),),
                SizedBox(height: 10,),
                Row(mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    Text('MAIN PRODUCTS:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      myCard(img: Image.asset('Assets/image/products/flight.jpg')),
                      myCard(img: Image.asset('Assets/image/products/nivea.jpg')),
                      myCard(img: Image.asset('Assets/image/products/watch.jpg')),

                    ],),),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon:Icon(Icons.account_circle),
              label: 'Search',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
        ],
        backgroundColor: Colors.grey,
        //type: BottomNavigationBarType.shifting,
        //onTap: (value) => ,
      ),
    );
  }
}
