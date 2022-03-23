import 'package:adispot/models/product_model.dart';

class cart_products_data{

  List<product> list = [
    product("assets/hardware_product_images/piler_demo_product_img.jpg","Lorem Ipsum", 1500.00, 4.6, 86, "tool"),
    product("assets/hardware_product_images/piler_demo_product_img.jpg","Lorem Ipsum", 1500.00, 4.6, 86, "tool"),
    product("assets/hardware_product_images/piler_demo_product_img.jpg","Lorem Ipsum", 1500.00, 4.6, 86, "tool"),
    product("assets/hardware_product_images/piler_demo_product_img.jpg","Lorem Ipsum", 1500.00, 4.6, 86, "tool"),
    product("assets/hardware_product_images/piler_demo_product_img.jpg","Lorem Ipsum", 1500.00, 4.6, 86, "tool"),
    product("assets/hardware_product_images/piler_demo_product_img.jpg","Lorem Ipsum", 1500.00, 4.6, 86, "tool"),
    product("assets/hardware_product_images/piler_demo_product_img.jpg","Lorem Ipsum", 1500.00, 4.6, 86, "tool"),
    product("assets/hardware_product_images/piler_demo_product_img.jpg","Lorem Ipsum", 1500.00, 4.6, 86, "tool"),
  ];

  List<product> getData(){
    return this.list;
  }
}