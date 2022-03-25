import 'package:adispot/widgets/grid_img_layout.dart';
import 'package:flutter/material.dart';

class filter_row_widget extends StatelessWidget {
  const filter_row_widget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF9F9F9),
      // padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Icon(Icons.filter_list_sharp),
                SizedBox(width: 10,),
                Text(
                  "Filter",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),



          Container(
            child: Row(
              children: [
                Icon(Icons.swap_vert),
                SizedBox(width: 10,),
                Text(
                  "Price: lowest to high",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),


          Container(
            child: Row(
              children: [
                Icon(Icons.list),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}