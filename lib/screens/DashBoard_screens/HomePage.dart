import 'dart:ui';

import 'package:adispot/screens/DashBoard_screens/grocery_page.dart';
import 'package:adispot/screens/DashBoard_screens/hardware_page.dart';
import 'package:adispot/screens/DashBoard_screens/shop_by_sub_category.dart';
import 'package:adispot/widgets/HomePage_carousel_card.dart';

import '../../data/grid_img_data.dart';
import '../../data/homeScreen_carousel_data.dart';
import 'package:adispot/models/homeScreen_carousel_Info.dart';
import 'package:adispot/widgets/search_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../DashBoard_screens/parking_list_page.dart';
import '../../constants.dart';
import '../../models/grid_img_Info.dart';
import '../../widgets/appbar.dart';
import '../../widgets/grid_img_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<homeScreen_carousel_Info> list_carousel =
      homeScreen_carousel_data().getData();
  List<grid_img_info> list = grid_img_data().getData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            search_field_widget(),
            SizedBox(
              height: 20,
            ),

            //Carousel Slider
            carousel_slider(),
            //------------

            SizedBox(height: 16),

            carousel_indicator(),

            SizedBox(
              height: 27,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Popular Brands",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ]),

            SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => shop_by_sub_category()));
              },
              child: shop_by_sub_category_grid_call()
            ),

            SizedBox(
              height: 13,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => shop_by_sub_category()));
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ]),

            SizedBox(
              height: 20,
            ),

            hardware_and_grocery_title(),

            SizedBox(
              height: 20,
            ),

            hardware_and_grocery_cards(),

            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  CarouselSlider carousel_indicator() {
    return CarouselSlider.builder(
      itemCount: list_carousel.length,
      options: CarouselOptions(
        height: 5,
        aspectRatio: 16 / 9,
        viewportFraction: 0.03,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 7),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
          Container(
        child: Container(
          height: 4,
          width: 4,
          color: Color(0xFFEA6F11),
        ),
      ),
    );
  }

  CarouselSlider carousel_slider() {
    return CarouselSlider.builder(
      itemCount: list_carousel.length,
      options: CarouselOptions(
        height: 150,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 7),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
      ),
      itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
          Container(
        child: HomePage_carousel_card(
            imgUrl: list_carousel[index].imgUrl,
            description: list_carousel[index].description),
      ),
    );
  }

  Container shop_by_sub_category_grid_call() {
    return Container(
      child: GridView.builder(
        itemCount: 8,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 2.0, mainAxisSpacing: 2.0),
        itemBuilder: (BuildContext context, int index) {
          return grid_img_layout(
              img: list[index].imgPath, title: list[index].title);
        },
      ),
    );
  }

  Widget hardware_and_grocery_title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Image.asset("assets/orange_circle.png", height: 60, width: 60),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Our Services",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              width: 115,
              margin: EdgeInsets.only(top: 50, left: 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFEA6F11), Colors.blue],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget hardware_and_grocery_cards() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => hardware_page()));
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFEA6F11),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/car_images/nexon.png",
                                alignment: Alignment.center,
                                height: 80,
                                width: 110,
                              ),
                              Text("Car rentals",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Discover Now",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white.withOpacity(0.5),
                                      )),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => parking_list_page()));
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFF3669C9),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/parking.png",
                                alignment: Alignment.center,
                                height: 80,
                                width: 110,
                              ),
                              Text("Parking",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Discover now",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white.withOpacity(0.5),
                                      )),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
  }
}
