import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:orixfurnitureui/checkoutpage.dart';
import 'package:orixfurnitureui/styles.dart';

class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

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
        title: Text('Cart',style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:10.0,top: 10),
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
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 30,),
              CartTile(
                out: Colors.orange.shade700,
                inside: Colors.orange.shade700,
                imgUrl: 'assets/bluechair.png',
                name: 'Water Blue\nChair',
                price: '\$300',
                ),
                SizedBox(height: 30,),
                CartTile(
                out: Colors.grey,
                inside: Colors.white,
                imgUrl: 'assets/whitechair.png',
                name: 'Ox White\nChair',
                price: '\$200',
                ),
                SizedBox(height: 30,),
                CartTile(
                out: Colors.grey,
                inside: Colors.white,
                imgUrl: 'assets/whitechair.png',
                name: 'Ox White\nChair',
                price: '\$200',
                ),
                SizedBox(height: 30,),
                CartTile(
                out: Colors.grey,
                inside: Colors.white,
                imgUrl: 'assets/whitechair.png',
                name: 'Ox White\nChair',
                price: '\$200',
                ),
                SizedBox(height: 30,),
                CartTile(
                out: Colors.orange.shade700,
                inside: Colors.orange.shade700,
                imgUrl: 'assets/greenchair.png',
                name: 'Grass Green\nChair',
                price: '\$400',
                ),
                SizedBox(height: 30,),
                CartTile(
                out: Colors.grey,
                inside: Colors.white,
                imgUrl: 'assets/whitechair.png',
                name: 'Ox White\nChair',
                price: '\$200',
                ),
                SizedBox(height: 30,),
                CartTile(
                out: Colors.grey,
                inside: Colors.white,
                imgUrl: 'assets/whitechair.png',
                name: 'Ox White\nChair',
                price: '\$200',
                ),
                SizedBox(height: 30,),
                CartTile(
                out: Colors.grey,
                inside: Colors.white,
                imgUrl: 'assets/whitechair.png',
                name: 'Ox White\nChair',
                price: '\$200',
                ),
                SizedBox(height: 30,),
                CartTile(
                out: Colors.grey,
                inside: Colors.white,
                imgUrl: 'assets/whitechair.png',
                name: 'Ox White\nChair',
                price: '\$200',
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Checkout(),
    );
  }
}

class Checkout extends StatelessWidget {
  const Checkout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        boxShadow: [
        BoxShadow(
      color: Colors.black.withOpacity(0.08),
      spreadRadius: 2,
      blurRadius: 10,
      offset: Offset(0, 0), // changes position of shadow
        ),
      ],
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:30.0,left: 30,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Selected Items (2)',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
                Text('Total: \$1400',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
                
              ],
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){return CheckOutPage();}));
      },
            child: Container(
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
                  child: Center(child: Text('Checkout',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
          )
        ],
      ),
    );
  }
}

class CartTile extends StatelessWidget {
  Color out;Color inside;String imgUrl,name,price;
   CartTile({
    Key? key,
    required this.out,
    required this.inside,
    required this.imgUrl,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: out),
            shape: BoxShape.circle
          ),
          child: Center(
            child: Container(
              height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: inside,
              shape: BoxShape.circle
            ),
            ),
          ),
        ),
        SizedBox(width: 20,),
        Container(
          height: 50,
          child: Image.asset(imgUrl),
        ),
        SizedBox(width:20),
        Container(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price),
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
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}