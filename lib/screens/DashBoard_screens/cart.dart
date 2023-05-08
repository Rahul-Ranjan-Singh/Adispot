import 'package:adispot/data/cart_product_data.dart';
import 'package:adispot/models/product_model.dart';
import 'package:adispot/widgets/cart_card.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/appbar.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  List<product> cart_product_list = cart_products_data().getData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      child: Column(
        children: [
          heading(),
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
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 25),
                Container(
                  // height: MediaQuery.of(context).size.height-30,
                  // height: 400
                  // height: VisualDensity.minimumDensity,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: cart_product_list.length,
                    itemBuilder: (context, index) {
                    return cart_card(item: cart_product_list[index]);
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Widget heading() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      height: 30,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            height: 30,
            alignment: Alignment.bottomCenter,
            child: Text(
              "Cart",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
