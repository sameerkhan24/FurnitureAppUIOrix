import 'package:flutter/material.dart';
import 'package:orixfurnitureui/styles.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({ Key? key }) : super(key: key);

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
        title: Text('Checkout',style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.bold),),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text('Shipping to',style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:30.0),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.orange.shade700),
              shape: BoxShape.circle
            ),
            child: Center(
              child: Container(
                height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.orange.shade700,
                shape: BoxShape.circle
              ),
              ),
            ),
          ),
          SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Home',style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('012 345 6789',style: TextStyle(fontSize: 14,color: Colors.grey,),),
                        SizedBox(height: 10,),
                        Text('1149 Whellbourough Road',style: TextStyle(fontSize: 14,color: Colors.grey,),),
                      ],
                    ),
              
                        ],
                      ),
                      Icon(Icons.edit_rounded,size: 25,)
                    ],
                  ),
                ),
              ),
        
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              shape: BoxShape.circle
            ),
            child: Center(
              child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
              ),
              ),
            ),
          ),
          SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Office',style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('987 654 4321',style: TextStyle(fontSize: 14,color: Colors.grey,),),
                      SizedBox(height: 10,),
                      Text('4532 Marrington Road',style: TextStyle(fontSize: 14,color: Colors.grey,),),
                    ],
                  ),
                    ],
                    ),
                    Icon(Icons.edit_rounded,size: 25,)
                  ],
                ),
              ),
        
              SizedBox(height: 30,),
              Text('Payment method',style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Column(
                  children: [
                    PaymentTile('Credit Card',Colors.orange.shade700,Colors.orange.shade700),
                    SizedBox(height: 30,),
                    PaymentTile('Google Pay',Colors.grey,Colors.white),
                    SizedBox(height: 30,),
                    PaymentTile('PhonPe',Colors.grey,Colors.white),
                    SizedBox(height: 30,),
                    PaymentTile('PayTM',Colors.grey,Colors.white),
                    SizedBox(height: 30,),
                    PaymentTile('Net Banking',Colors.grey,Colors.white),
                  ],
                ),
              ),
        
            ],
          ),
        ),
      ),
      bottomNavigationBar: Payment(),
    );
  }

  Row PaymentTile(String name,Color out,Color inside) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name,style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold),),
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
                  ],
                );
  }
}

class Payment extends StatelessWidget {
  const Payment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
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
                Text('Shipping fee',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.8)),),
                Text('\$30',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.8)),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0,left: 30,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sub total',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.8)),),
                Text('\$1400',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.8)),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0,left: 30,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
                Text('\$1430',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
                height: 70,
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
                child: Center(child: Text('Payment',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),
              )
        ],
      ),
    );
  }
}