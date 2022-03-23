import 'package:adispot/models/onBoarding_Models/onBoard_Info.dart';
import 'package:adispot/screens/login_screens/login_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class onBoardingController extends GetxController{

  var selectedPageIndex = 0.obs;
  bool get isLast => selectedPageIndex.value == onBoardingPages.length-1;
  bool get isFirst => selectedPageIndex.value == 0;
  var pageController =  PageController();

  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }

  forwardAction(context){
    if(isLast){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> loginScreen()));
      this.dispose();
    }
    else{
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  back_or_skip_Action(context){
    if(isFirst){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> loginScreen()));
      this.dispose();
    }
    else{
      pageController.previousPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<onBoardInfo> onBoardingPages = [

    //first OnBoarding Screen Data
    onBoardInfo(
      'assets/onBoardingAssets/onBoard_page_1_Img.png',
      "WE CATER TO YOUR NEEDS",
      "Providing you with the best equipment for every project."
    ),
    
    //first OnBoarding Screen Data
    onBoardInfo(
      "assets/onBoardingAssets/onBoard_page_2_Img.png",
      "WE CATER TO YOUR NEEDS",
      ""
    ),

    //Third OnBoarding Screen Data
    onBoardInfo(
      "assets/onBoardingAssets/onBoard_page_3_Img.png",
      "SAFE AND SEAMLESS TRANSACTIONS",
      "Making hitch-free transactions just got easier."
    )
  ];
}