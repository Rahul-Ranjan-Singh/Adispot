import 'package:adispot/models/product_model.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class product_tile extends StatelessWidget {
  product item;

  product_tile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(32)),
      child: Card(
        elevation: 0.5,
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  item.img,
                  height: 136,
                  width: 136,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      item.product_name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_outline_rounded,
                    // color: Color(0xFFDADADA),
                    color: Colors.grey,
                  ),
                ],
              ),


              SizedBox(height: 10,),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "Rs. ${item.price.toString()}",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFE3A30),
                  ),
                ),
              ),


              SizedBox(height: 8),

              Row(
                children: [
                  Icon(Icons.star_rounded, color: Color(0xFFFFC120),
                  size: 13,
                  ),

                  SizedBox(width: 5,),
                  Text(
                    item.rating.toString(),
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),


                  SizedBox(width: 10,),
                  Text(
                    "${item.review_count.toString()} Reviews",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
