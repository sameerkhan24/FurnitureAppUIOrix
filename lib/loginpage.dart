import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:orixfurnitureui/styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Container(child: Image.asset(
                  'assets/logo.png',
                   fit: BoxFit.contain,
                   height: 50,
                   width: double.infinity,
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:10.0),
                      child: Text(
                        'Orix Furniture',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.7)
                        ),
                        ),
                    ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                color: Colors.transparent,
                height: 400,
                width: double.infinity,
                child: Stack(
                  children: [
                    CircleBackground(),
                    FurnitureImageStack(),
                  ],
                ),
              ),
            ),

            Text(
              '''How long your furniture has served, there
comes a time when you say "Bye", and
say hello to Us ''',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 15,fontWeight: FontWeight.w500,height: 1.5),
            ),
            ArrowPanel(),
            SignUpButton(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Already have an Account? Sign in',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.6),shadows: [textshadow]),),
            )
          ],
        ),
      ),
    );
  }
}

class FurnitureImageStack extends StatelessWidget {
  const FurnitureImageStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top:24.0),
        child: Text('2021',style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold),)
      )),
    Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom:8.0),
        child: Container(child: Image.asset(
                        'assets/greenchair.png',
                         fit: BoxFit.contain,
                         height: 240,
                         
        ),
        ),
      ),
    ),
    Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left:20.0,top: 20),
        child: Container(child: Image.asset(
                        'assets/bluechair.png',
                         fit: BoxFit.contain,
                         height: 100,
                         
        ),
        ),
      ),
    ),
    Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(bottom:8.0),
        child: Padding(
          padding: const EdgeInsets.only(right:20.0,top: 60),
          child: Container(child: Image.asset(
                          'assets/whitechair.png',
                           fit: BoxFit.contain,
                           height: 80,
                           
          ),
          ),
        ),
      ),
    ),
      ],
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 360,
      decoration: BoxDecoration(
        color: const Color(0xFF443B5A),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 10,
        offset: Offset(0, 2), 
      ),
        ]
      ),
      child: Center(child: Text('Signup',style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),)),
    );
  }
}

class ArrowPanel extends StatelessWidget {
  const ArrowPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow
            ),
            child: Icon(Icons.arrow_back,color: Colors.white,),
          ),
          Container(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3)
              ),
                ),
                Container(
                  height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3)
              ),
                ),
                Container(
                  height: 14,
              width: 14,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange
              ),
                ),
                Container(
                  height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3)
              ),
                ),
                Container(
                  height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3)
              ),
                ),
              ],
            ),
          ),

          Container(
            height: 100,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red
            ),
            child: Icon(Icons.arrow_forward,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}

class CircleBackground extends StatelessWidget {
  const CircleBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.1),
            ),
          ),
        ),
        Center(
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
        Center(
          child: Container(
            height: 240,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.1),
            ),
          ),
        ),
        Center(
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),

        
      ],
    );
  }
}
