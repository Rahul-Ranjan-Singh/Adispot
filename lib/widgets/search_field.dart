import 'package:flutter/material.dart';

class search_field_widget extends StatelessWidget {




  const search_field_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: Color(0xFFEDEDED), width: 2),
          color: Color(0xFFFAFAFA),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 40,
              alignment: Alignment.center,
              child: Icon(
                Icons.search_outlined,
                color: const Color(0xFF0C1A30),
                size: 24,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for Sub Category",
                    hintStyle: TextStyle(
                      color: Colors.black.withAlpha(120),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    border: InputBorder.none,
                  ),
                  onChanged: (String keyword) {},
                ),
              ),
            ),
            Container(
              width: 40,
              alignment: Alignment.center,
              child: Icon(
                Icons.camera_alt_outlined,
                color: const Color(0xFF0C1A30),
                size: 24,
              ),
            )
          ],
        ));
  }
}
