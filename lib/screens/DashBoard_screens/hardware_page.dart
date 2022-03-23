import 'package:adispot/data/hardware_product_data.dart';
import 'package:adispot/models/product_model.dart';
import 'package:adispot/widgets/filters_row_widget.dart';
import 'package:adispot/widgets/product_tile.dart';
import 'package:adispot/widgets/search_field.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../data/grid_img_data.dart';
import '../../models/grid_img_Info.dart';
import '../../widgets/appbar.dart';
import '../../widgets/grid_img_layout.dart';

class hardware_page extends StatefulWidget {
  const hardware_page({Key? key}) : super(key: key);

  @override
  State<hardware_page> createState() => _hardware_pageState();
}

class _hardware_pageState extends State<hardware_page> {
  List<grid_img_info> list = grid_img_data().getData();
  List<product> product_list = hardware_product_data().getData();

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
                    "Hardware",
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
                  hardware_vertical_scroll_list(),
                  SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: product_list.length,
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.6,
                        crossAxisCount: 2,
                        crossAxisSpacing: 29.0,
                        mainAxisSpacing: 30.0),
                    itemBuilder: (BuildContext context, int index) {
                      return product_tile(
                        item: product_list[index],
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

  Widget hardware_vertical_scroll_list() {
    return Container(
      alignment: Alignment.center,
      height: 120,
      child: ListView.builder(
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(left: 20),
                child: grid_img_layout(
                    img: list[index].imgPath, title: list[index].title));
          }),
    );
  }
}
