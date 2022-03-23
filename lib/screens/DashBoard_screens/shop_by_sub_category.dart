import 'package:adispot/models/grid_img_Info.dart';
import 'package:adispot/widgets/grid_img_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../widgets/appbar.dart';
import '../../constants.dart';
import '../../widgets/search_field.dart';
import '../../data/grid_img_data.dart';

class shop_by_sub_category extends StatefulWidget {
  const shop_by_sub_category({Key? key}) : super(key: key);

  @override
  State<shop_by_sub_category> createState() => _shop_by_sub_categoryState();
}

class _shop_by_sub_categoryState extends State<shop_by_sub_category> {
  @override
  Widget build(BuildContext context) {
    List<grid_img_info> list = grid_img_data().getData();
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
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
            
            // BODY starts Here.....
        
            Column(
              children: [
                SizedBox(height: 10),
                search_field_widget(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Shop By Sub Category",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
        
                Container(
                  height: 140,
                  width: 326,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Image.asset(
                    "assets/discount_ad_banner.png",
                  ),
                ),
        
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.center,
                  child: Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
        
        
                Container(
                  
                  child: GridView.builder(
                    itemCount: list.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 2.0,
                        mainAxisSpacing: 2.0),
                    itemBuilder: (BuildContext context, int index) {
                      return grid_img_layout(
                          img: list[index].imgPath, title: list[index].title);
                    },
                  ),
                ),
              ],
            )
              ],
            ),
          ),
        ));
  }
}
