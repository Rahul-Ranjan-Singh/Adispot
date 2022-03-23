import 'package:flutter/material.dart';

class HomePage_carousel_card extends StatefulWidget {
  String imgUrl;
  String description = "";
  HomePage_carousel_card(
      {Key? key, required this.imgUrl, required this.description})
      : super(key: key);

  @override
  State<HomePage_carousel_card> createState() => _HomePage_carousel_cardState();
}

class _HomePage_carousel_cardState extends State<HomePage_carousel_card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(9)),
        // color: Colors.red,
      ),
      margin: EdgeInsets.symmetric(horizontal: 13),
      height: 150,
      width: 315,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(9)),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(9),
                  bottomRight: Radius.circular(9),
                ),
                child: Image.asset(widget.imgUrl, fit: BoxFit.cover)),
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(75),
                  bottomRight: Radius.circular(75),
                  bottomLeft: Radius.circular(9),
                  topLeft: Radius.circular(9)),
              color: Color(0xFFEA6F11),
            ),
            padding: EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
                widget.description,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
