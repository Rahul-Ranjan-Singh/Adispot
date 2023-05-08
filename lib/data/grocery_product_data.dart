import 'package:adispot/models/product_model.dart';

class grocery_product_data{
  List<product> product_list= [
    product("assets/grocery_product_images/grocery1.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "coldrink"),
    product("assets/grocery_product_images/grocery2.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "coldrink"),
    product("assets/grocery_product_images/grocery3.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "fruit"),
    product("assets/grocery_product_images/grocery4.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "coldrink"),
    product("assets/grocery_product_images/grocery1.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "fruit"),
    product("assets/grocery_product_images/grocery2.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "coldrink"),
    product("assets/grocery_product_images/grocery3.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "coldrink"),
    product("assets/grocery_product_images/grocery4.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "fruit"),
    product("assets/grocery_product_images/grocery1.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "coldrink"),
    product("assets/grocery_product_images/grocery2.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "coldrink"),
    product("assets/grocery_product_images/grocery3.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "fruit"),
    product("assets/grocery_product_images/grocery4.png","Lorem Ipsum", "7.79-14.89", 4.6, 86, "coldrink"),
  ];

  List<product> getData(){
      return this.product_list;
  }
}