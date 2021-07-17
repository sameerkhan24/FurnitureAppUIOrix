import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:orixfurnitureui/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: Icon(Icons.short_text_rounded,color: Colors.black.withOpacity(0.7),size: 40,),
        ),
        title: Text('Orix Home',style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: Icon(Icons.shopping_bag_outlined,color: Colors.black.withOpacity(0.7),size: 28,),
          )],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchAndFilterBox(),

          Padding(
            padding: const EdgeInsets.only(top:30.0,left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selected=1;
                        });
                        },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selected==1 ? orixpurple: Colors.grey.withOpacity(0.1),
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.chair_rounded,
                        color: selected==1 ? Colors.white.withOpacity(0.8) : Colors.black.withOpacity(0.8),
                        size: 30,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selected=2;
                        });
                        },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selected==2 ? orixpurple: Colors.grey.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.chair_alt_rounded,
                        color: selected==2 ? Colors.white.withOpacity(0.8) : Colors.black.withOpacity(0.8),
                        size: 30,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selected=3;
                        });
                        },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selected==3 ? orixpurple: Colors.grey.withOpacity(0.1),
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.badge,
                        color: selected==3 ? Colors.white.withOpacity(0.8) : Colors.black.withOpacity(0.8),
                        size: 30,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selected=4;
                        });
                        },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selected==4 ? orixpurple: Colors.grey.withOpacity(0.1),
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.light_rounded,
                        color: selected==4 ? Colors.white.withOpacity(0.8) : Colors.black.withOpacity(0.8),
                        size: 30,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selected=5;
                        });
                        },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selected==5 ? orixpurple: Colors.grey.withOpacity(0.1),
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.table_rows_rounded,
                        color: selected==5 ? Colors.white.withOpacity(0.8) : Colors.black.withOpacity(0.8),
                        size: 30,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selected=6;
                        });
                        },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: selected==6 ? orixpurple: Colors.grey.withOpacity(0.1),
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.filter_frames_rounded,
                        color: selected==6 ? Colors.white.withOpacity(0.8) : Colors.black.withOpacity(0.8),
                        size: 30,),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),

          ChairImgScroller(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30.0),
            child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
                    Text('View All',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
                  ],
                )),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Row(
                      children: [
                      PopularChairCard(imgUrl: 'assets/bluechair.png',model: 'Blue Chair',price: '\$300',),
                      PopularChairCard(imgUrl: 'assets/greenchair.png',model: 'Green Chair',price: '\$400',),
                      PopularChairCard(imgUrl: 'assets/whitechair.png',model: 'White Chair',price: '\$200',),
                    ],),
                  ),
                ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 60,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.home_filled,color: orixpurple,size: 28,),
                    Icon(Icons.favorite,color: Colors.grey.withOpacity(0.5),size: 28,),
                    Icon(Icons.home_filled,color: Colors.white,size: 28,),
                    Icon(Icons.shopping_basket_rounded,color: Colors.grey.withOpacity(0.5),size: 28,),
                    Icon(Icons.person,color: Colors.grey.withOpacity(0.5),size: 28,),
                ],),
              ),
              Center(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: orixpurple,
                  ),
                  child: Icon(Icons.lock_rounded,color: Colors.yellow.shade600,size: 30,),
                ),
              ),
            ],
          )),
      ),
    );
  }
}

class PopularChairCard extends StatelessWidget {
  String imgUrl;
  String model;
  String price;
   PopularChairCard({
    Key? key,
    required this.imgUrl,
    required this.model,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Container(
        height: 100,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
        BoxShadow(
      color: Colors.black.withOpacity(0.08),
      spreadRadius: 1,
      blurRadius: 10,
      offset: Offset(0, 0), // changes position of shadow
        ),
      ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            height: 60,
            child: Image.asset(imgUrl),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
              SizedBox(height: 5,),
              Text('Free Delivery',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),),
              SizedBox(height: 5,),
              Text(price,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
              
            ],
          ),
        ],),
      ),
    );
  }
}

class ChairImgScroller extends StatelessWidget {
  const ChairImgScroller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20.0,bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ChairCard(imgUrl: 'assets/whitechair.png',model: 'Ox White\nChair',price: '\$200',),
            ChairCard(imgUrl: 'assets/greenchair.png',model: 'Grass Green\nChair',price: '\$400',),
            ChairCard(imgUrl: 'assets/bluechair.png',model: 'Water Blue\nChair',price: '\$300',),
          ],
        ),
      ),
    );
  }
}

class ChairCard extends StatelessWidget {
  String imgUrl,model,price;
   ChairCard({
    Key? key,
    required this.imgUrl,
    required this.model,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: Container(
        height:340,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
        BoxShadow(
      color: Colors.black.withOpacity(0.08),
      spreadRadius: 1,
      blurRadius: 10,
      offset: Offset(0, 0), // changes position of shadow
        ),
      ],
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      //color: Colors.yellow,
                      height: 150,
                      child: Image.asset(imgUrl),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8.0,top:8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 36,
                      child: Image.asset('assets/love.png'),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right:30.0,left:30,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(child: Text(model,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),)),
                  Row(
                    children: [
                      Container(
                        height: 24,
                        child: Image.asset('assets/star.png'),
                      ),
                      Text('(3.5)',style: TextStyle(fontSize: 18,color: Colors.grey),)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Avaiable | 100 left',style: TextStyle(fontSize: 12,color: Colors.grey),),
                      SizedBox(height:5),
                      Text(price,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),)
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: orixpurple,
                    ),
                    child: Icon(Icons.add,color: Colors.white,))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchAndFilterBox extends StatelessWidget {
  const SearchAndFilterBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Row(
        children: [
          Spacer(),
          Container(
            width: 260,
            height: 60,
            decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: TextField(
                  
        onChanged: (value){},
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      icon: Icon(Icons.search,size: 28,color: Colors.grey,),
      hintText: 'Search',   
      hintStyle: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w500),
        ),
      ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Color(0xFF443B5A),
              borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: Icon(Icons.swap_horiz_outlined,color: Colors.white,size: 30,)
          ),
          Spacer()
        ],
      ),
    );
  }
}