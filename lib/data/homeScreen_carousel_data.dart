import 'package:adispot/models/homeScreen_carousel_Info.dart';

class homeScreen_carousel_data{

  List<homeScreen_carousel_Info> list = [
    homeScreen_carousel_Info("assets/carousel_Image.png", "Super Flash Sale 50% Off"),
    homeScreen_carousel_Info("assets/carousel_Image.png", "Super Flash Sale 50% Off"),
    homeScreen_carousel_Info("assets/carousel_Image.png", "Super Flash Sale 50% Off"),
    homeScreen_carousel_Info("assets/carousel_Image.png", "Super Flash Sale 50% Off"),
    homeScreen_carousel_Info("assets/carousel_Image.png", "Super Flash Sale 50% Off"),
    homeScreen_carousel_Info("assets/carousel_Image.png", "Super Flash Sale 50% Off"),
    homeScreen_carousel_Info("assets/carousel_Image.png", "Super Flash Sale 50% Off"),
  ];

  List<homeScreen_carousel_Info> getData(){
    return this.list;
  }
}