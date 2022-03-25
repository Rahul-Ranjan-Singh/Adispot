import 'package:adispot/constants.dart';
import 'package:adispot/controllers/onBoarding_contollers/onBoardController.dart';
import 'package:adispot/screens/login_screens/login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class onBoardingPage extends StatelessWidget {
  onBoardingPage({Key? key}) : super(key: key);
  onBoardingController _controller = onBoardingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Stack(
          
          fit: StackFit.expand,
      
          children: [
          
          PageView.builder(
          controller: _controller.pageController,
          itemCount: _controller.onBoardingPages.length,
          onPageChanged: _controller.selectedPageIndex,
          itemBuilder: (context, index) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 41.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(_controller.onBoardingPages[index].image),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      _controller.onBoardingPages[index].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: primaryColor,
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      _controller.onBoardingPages[index].description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 5,
                      width: 160,
                      color: primaryColor,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            );
          }),
          Container(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () {
              _controller.back_or_skip_Action(context);
            }, child: Obx(() {
              return Text(
                _controller.selectedPageIndex.value == 0 ? "SKIP" : "BACK",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              );
            })),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                    _controller.onBoardingPages.length,
                    (index) => Obx(() {
                          return Container(
                            margin: const EdgeInsets.all(4),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: _controller.selectedPageIndex.value ==
                                      index
                                  ? primaryColor
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          );
                        }))),
                        
            Obx(() { return forward_Button(context, _controller);}),
          ],
        ),
          )
        ]),
      ),
    );
  }

  Widget forward_Button(context, _controller) {
    
    if (_controller.selectedPageIndex.value == _controller.onBoardingPages.length-1) {
      return IconButton(
        onPressed: (){
          return _controller.forwardAction(context);
        },
        alignment: Alignment.center,
        icon: Icon(
          Icons.check,
          color: primaryColor,
          size: 30,
        ),
      );
    } else {
      return TextButton(
        onPressed: (){
          return _controller.forwardAction(context);
        },
        child: Text(
          "NEXT",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Poppins",
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        ),
      );
    }
  }
}
