import 'package:flutter/material.dart';

import 'package:adispot/data/hardware_product_data.dart';
import 'package:adispot/models/product_model.dart';
import 'package:adispot/widgets/filters_row_widget.dart';
import 'package:adispot/widgets/product_tile.dart';
import 'package:adispot/widgets/search_field.dart';
import '../DashBoard_screens/parking_detail_page.dart';
import '../../constants.dart';
import '../../data/grid_img_data.dart';
import '../../models/grid_img_Info.dart';
import '../../widgets/appbar.dart';
import '../../widgets/grid_img_layout.dart';
import '../../data/parking_data.dart';
import '../../models/parking_model.dart';
import '../../widgets/appbar.dart';

class parking_list_page extends StatefulWidget {
  const parking_list_page({Key? key}) : super(key: key);

  @override
  State<parking_list_page> createState() => _parking_list_pageState();
}

class _parking_list_pageState extends State<parking_list_page> {

  List<parking> praking_list = parking_data().getData();
  
  @override
  Widget build(BuildContext context) {
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

            SizedBox(
              height: 20,
            ),

            //-------- SEARCH BOX --------
            search_field_widget(),

            SizedBox(
              height: 20,
            ),

            filter_row_widget(),

            SizedBox(
              height: 25,
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    // spreadRadius: 10,
                    // blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                  BoxShadow(
                    color: Color(0xFFFAFAFA),
                    spreadRadius: -4.0,
                    blurRadius: 4.0,
                  ),
                ],

                // 
                // color: Colors.red,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Parkings",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 2,
                          width: 115,
                          // margin: EdgeInsets.only(top: 50, left: 65),
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: praking_list.length,
                    scrollDirection: Axis.vertical,


                    itemBuilder: (BuildContext context, int index) {
                      return  Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => parking_detail_page(praking_list[index])));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                            child: Card(

                              elevation: 1,
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),

                                  height: 140,

                                  width: MediaQuery.of(context).size.width /1.5,
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Image.asset(
                                        praking_list[index].images[0],
                                      height: 140,
                                      width: 140,
                                      fit: BoxFit.cover
                                    ),

                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 140,
                                        child: Column(

                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            SizedBox(height: 10,),

                                            Text(
                                              praking_list[index].parkinName,
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),

                                            SizedBox(height: 10,),

                                            Row(
                                              children: [
                                                Icon(Icons.star_rounded, color: Color(0xFFFFC120),
                                                  size: 23,
                                                ),
                                                SizedBox(width: 10,),
                                                Text(
                                                  "${praking_list[index].rating}",
                                                  style: TextStyle(
                                                    color: baseIconColor,
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),

                                            SizedBox(height: 10,),
                                            Container(
                                              width: 150,
                                              child: Text(
                                                praking_list[index].address,
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),



                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
