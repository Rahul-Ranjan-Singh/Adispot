import 'package:adispot/screens/DashBoard_screens/HomePage.dart';
import 'package:adispot/screens/DashBoard_screens/bottom_navBar_menu.dart';
import 'package:flutter/material.dart';
import '../DashBoard_screens/shop_by_sub_category.dart';
import '../../constants.dart';

class codeVerificationScreen extends StatelessWidget {
  const codeVerificationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.all(8),
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () { 
            
           },
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
      
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/code_verfication_Image.png",
              ),
            ),
      
      
            Text(
              "Code Verification",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 32,
                color: Colors.black,
              ),
            ),
      
      
            SizedBox(height: 14,),
      
            Text(
              "Enter your Verification Code",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                fontSize: 19,
                color: Colors.grey
              ),
            ),
      
      
            SizedBox(height: 49,),
      
            Container(
              width: 180,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(28)),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => menu()));
                },
                child: Text(
                  "Verify",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ]
        ),
      )
    );
  }
}