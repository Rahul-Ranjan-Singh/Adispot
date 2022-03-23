import 'package:adispot/constants.dart';
import 'package:adispot/screens/onboarding_screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class getStartedScreen extends StatelessWidget {
  const getStartedScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/onBoardingAssets/getStarted_BG.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Container(
                color: getStartedBGColor.withOpacity(0.25),
                height: height,
                width: width,
              ),
      
              Column(
                
                children: [
                  SizedBox(height: 70),
      
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 320,
                      width: 320,
                      margin: const EdgeInsets.symmetric(horizontal: 11),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/logo.png"),
                        ),
                        color: whiteLightColor.withOpacity(0.15),
                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                    ),
                  ),
                  
                  SizedBox(height: 87,),
                  
                  Text(
                    "Welcome to our store",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
      
      
      
                  SizedBox(height: 34),
      
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Providing you with the best equipment for every project.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
      
      
                  SizedBox(height: 70),
      
                  Container(
                    width: 200,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(28)),
                    ),
                    child: TextButton(
                      onPressed:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> onBoardingPage()));
                      } ,
                      child: Text(
                        "Get Started",
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
      
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}