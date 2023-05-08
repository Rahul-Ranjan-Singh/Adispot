import 'package:adispot/screens/DashBoard_screens/HomePage.dart';
import 'package:adispot/screens/DashBoard_screens/cart.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/appbar.dart';

class menu extends StatefulWidget {
  const menu({ Key? key }) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

  int bottomSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      
      body: PageView(
        controller: pageController,
        onPageChanged: (page_index){
          pageChanged(page_index);
        },
        children: [
          HomePage(),
          cart(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      
      ),
    );
  }

  Widget iconImageset(String url){
    return Image.asset(url, height: 20, width: 20);
  }

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          label: "HOME",
          icon: (bottomSelectedIndex==0)? iconImageset("assets/icons/home_selected.png") : iconImageset("assets/icons/home.png") ,
      ),
      // BottomNavigationBarItem(
      //   label: "WHATSAPP",
      //   icon: iconImageset("assets/icons/watsapp.png"),
      // ),
      // BottomNavigationBarItem(
      //     label: "ORDER",
      //     icon: iconImageset("assets/icons/order.png"),
      // ),
      BottomNavigationBarItem(
          label: "CART",
          icon: (bottomSelectedIndex==3)? iconImageset("assets/icons/shopping_cart_selected.png") : iconImageset("assets/icons/shopping_cart.png") ,
      ),
      // BottomNavigationBarItem(
      //     label: "ACCOUNT",
      //     icon: ClipRRect(
      //       borderRadius: BorderRadius.all(Radius.circular(20)),
      //       child: iconImageset("assets/user.png"),
      //     ),
      // ),
    ];
  }


  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void bottomTapped(int index) {
  setState(() {
    bottomSelectedIndex = index;
    pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
  });
  }

  void pageChanged(int index) {
  setState(() {
    bottomSelectedIndex = index;
    
  });
  }
}