import 'package:flutter/material.dart';

class grid_img_layout extends StatelessWidget {
  String img, title;
  grid_img_layout({Key? key, required this.img, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          height: 61,
          width: 61,
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        ),
        
        SizedBox(height: 7,),
        Text(title, style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),)
      ]),
    );
  }
}
