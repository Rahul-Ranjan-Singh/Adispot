import 'package:adispot/constants.dart';
import 'package:flutter/material.dart';

class aapBar_widget extends StatefulWidget {
  aapBar_widget({ Key? key, this.action_icon_list, required this.show_logo }) : super(key: key);
  bool show_logo = false;
  List<Widget>? action_icon_list=[];

  @override
  State<aapBar_widget> createState() => _aapBar_widgetState();
}

class _aapBar_widgetState extends State<aapBar_widget> {
  @override

  
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(icon: Icon(Icons.menu, size: 30,), color: baseIconColor,
          onPressed: (){

          },
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Image.asset("assets/logo_2.png", height: 90, width: 70),
      ),
      actions: widget.action_icon_list,
      backgroundColor: Colors.white,
    );
  }


}