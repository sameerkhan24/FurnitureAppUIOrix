import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:orixfurnitureui/cartpage.dart';
import 'package:orixfurnitureui/styles.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({ Key? key }) : super(key: key);

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
          child: GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back_ios,color: Colors.black.withOpacity(0.7),size: 30,)),
        ),
        title: Text('Product',style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:10.0,top: 10),
            child: GestureDetector(
              onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){return CartPage();}));
      },
              child: Stack(
                children: [
                  Icon(Icons.shopping_bag_outlined,color: Colors.black.withOpacity(0.7),size: 28,),
                  Padding(
                    padding: const EdgeInsets.only(left:16.0),
                    child: Container(
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: orixpurple,
                      ),
                      child: Center(child: Text('2',style: TextStyle(fontSize: 12),)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ],
      ),

      body: Column(
        children: [
          ProductCard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:100.0,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColorDot(Colors.grey),
                ColorDot(Colors.brown),
                ColorDot(Colors.green.shade900),
                ColorDot(Colors.orange.shade700),
                ColorDot(Colors.brown.shade100),
              ],
            ),
          ),

          DescAndStar(),
          FullDescription(),
          Total(),
          AddTocart(),

        ],
      ),
    );
  }


  Container ColorDot(Color c) {
    return Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: c,
                  shape: BoxShape.circle,
                ),
              );
  }
}

class AddTocart extends StatelessWidget {
  const AddTocart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 360,
        decoration: BoxDecoration(
    color: const Color(0xFF443B5A),
    borderRadius: const BorderRadius.all(Radius.circular(20)),
    boxShadow: [
      BoxShadow(
    color: Colors.black.withOpacity(0.2),
    spreadRadius: 2,
    blurRadius: 10,
    offset: Offset(0, 3), 
        ),
    ]
        ),
        child: Center(child: Text('Add to cart',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),
      );
  }
}

class Total extends StatelessWidget {
  const Total({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('-',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(top:5.0),
                child: Text('02',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
              ),
              SizedBox(width: 10,),
              Text('+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500))
            ],
          ),
          Text('Total : \$490',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class FullDescription extends StatelessWidget {
  const FullDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ullamcorper, dui eget tincidunt tempor, augue elit ultrices elit, vitae faucibus lacus risus et elit. Suspendisse tempus magna id elementum consequat.',
        style: TextStyle(fontSize: 14,color: Colors.grey),
        ),
    );
  }
}

class DescAndStar extends StatelessWidget {
  const DescAndStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Description',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
          Row(
              children: [
                Container(
                  height: 18,
                  child: Image.asset('assets/star.png'),
                ),
                Text('(3.5)',style: TextStyle(fontSize: 14,color: Colors.grey),)
              ],
            ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 20),
      child: Container(
        height: 380,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all((Radius.circular(20))),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:40.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 250,
                        child: Hero(
                          tag: '2',
                          child: Image.asset('assets/greenchair.png')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:50.0,top:20),
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
                padding: const EdgeInsets.symmetric(horizontal:30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Grass\nGreen Chair',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
                    Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                    color: const Color(0xFF443B5A),
                     borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3), 
                            ),
                          ]
                          ),
                      child: Center(child: Text('\$300',style: TextStyle(fontSize: 20,color: Colors.white,),)),
                      ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}