import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../constants.dart';
import '../../data/parking_data.dart';
import '../../models/parking_model.dart';
import '../../widgets/appbar.dart';

class parking_detail_page extends StatefulWidget {
  final parking parking_list;
  const parking_detail_page( this.parking_list, {Key? key }) : super(key: key);

  @override
  State<parking_detail_page> createState() => _parking_detail_pageState();
}

class _parking_detail_pageState extends State<parking_detail_page> {



  // List<parking> list_carousel = parking_data().getData();

  @override
  Widget build(BuildContext context) {
    print(widget.parking_list);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: aapBar_widget(
          show_logo: true,
          action_icon_list: [
            IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: baseIconColor,
                size: 25,
              ),
              visualDensity: VisualDensity(horizontal: -3.0),
              padding: EdgeInsets.symmetric(horizontal: 0),
              onPressed: () {},
            ),
            // SizedBox(width: 5,),
            IconButton(
              icon: Icon(
                Icons.filter_alt_outlined,
                color: baseIconColor,
                size: 25,
              ),
              padding: EdgeInsets.symmetric(horizontal: 0),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          children: [
            SizedBox(height: 0,),
            carousel_slider(),
            SizedBox(height: 20,),

            Container(
              width: MediaQuery.of(context).size.width/1.1,
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                child: Text(
                  widget.parking_list.parkinName,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 21,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),

            ),

            SizedBox(height: 10,),

            Container(
              width: MediaQuery.of(context).size.width/1.1,
              alignment: Alignment.centerLeft,
              child: Text(
                "Address",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 19,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),

            SizedBox(height: 15,),

            Container(
              width: MediaQuery.of(context).size.width/1.1,
              alignment: Alignment.centerLeft,
              child: Text(
                widget.parking_list.address,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),


            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              alignment: Alignment.centerLeft,
              child: Text(
                "Space For 2 Wheelers",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 19,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              alignment: Alignment.centerLeft,
              child: Text(
                "${widget.parking_list.twoWheelerSpace}",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 19,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              alignment: Alignment.centerLeft,
              child: Text(
                "Space For 4 Wheelers",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 19,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              alignment: Alignment.centerLeft,
              child: Text(
                "${widget.parking_list.fourWheelerSpace}",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 19,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),


            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              alignment: Alignment.centerLeft,
              child: Text(
                "Two Wheeler Parking Charge",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 19,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              alignment: Alignment.centerLeft,
              child: Text(
                "₹ ${widget.parking_list.twoWheelerParkingCharge}",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 19,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),


            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              alignment: Alignment.centerLeft,
              child: Text(
                "Four Wheeler Parking Charge",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 19,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              alignment: Alignment.centerLeft,
              child: Text(
                "₹ ${widget.parking_list.fourWheelerParkingCharge}",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 19,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }

  CarouselSlider carousel_slider() {
    return CarouselSlider.builder(
      itemCount: widget.parking_list.images.length,
      options: CarouselOptions(
        height: 180,
        aspectRatio: 16 / 8,
        viewportFraction: 1,
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
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              widget.parking_list.images[index],
              height: 179,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
    );
  }
}
