import 'package:adispot/models/parking_model.dart';
import 'package:adispot/models/product_model.dart';

class parking_data{

  List<parking> list = [
    parking(
        "1",
        "Multi Level Parking",
        [
          "assets/parkings/multi_level_parking.png",
          "assets/parkings/multi_level_parking2.png",
          "assets/parkings/multi_level_parking3.png",
        ],
        '<div class="mapouter"><div class="gmap_canvas"><iframe class="gmap_iframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=gorakhpur railway station parking&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://capcuttemplate.org/">Capcuttemplate.org</a></div><style>.mapouter{position:relative;text-align:right;width:600px;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:600px;height:400px;}.gmap_iframe {width:600px!important;height:400px!important;}</style></div>',
        "platform no 9, Station Rd, Kawwa Bagh Colony, Gorakhpur, Uttar Pradesh 273012",
        4.9,
        "34",
        "20",
        15,
        30
    ),

    parking(
        "2",
        "Gorakhnath mandir parking",
        [
          "assets/parkings/gorakhnath_parking.png",
          "assets/parkings/gorakhnath_parking.png"
        ],
        '<div class="mapouter"><div class="gmap_canvas"><iframe class="gmap_iframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=gorakhpur railway station parking&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://capcuttemplate.org/">Capcuttemplate.org</a></div><style>.mapouter{position:relative;text-align:right;width:600px;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:600px;height:400px;}.gmap_iframe {width:600px!important;height:400px!important;}</style></div>',
        "22, Gorakhnath, Gorakhpur, Uttar Pradesh 273015",
        4.9,
        "34",
        "20",
        15,
        30
    ),

    parking(
        "3",
        "Gorakpur Railway Parking",
        [
          "assets/parkings/railway_station_parking.png",
          "assets/parkings/railway_station_parking2.png",
        ],
        '<div class="mapouter"><div class="gmap_canvas"><iframe class="gmap_iframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=gorakhpur railway station parking&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://capcuttemplate.org/">Capcuttemplate.org</a></div><style>.mapouter{position:relative;text-align:right;width:600px;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:600px;height:400px;}.gmap_iframe {width:600px!important;height:400px!important;}</style></div>',
        "platform no 9, Station Rd, Kawwa Bagh Colony, Gorakhpur, Uttar Pradesh 273012",
        4.9,
        "34",
        "20",
        15,
        30
    ),

    parking(
        "1",
        "Gorakhpur Zoo Parking",
        [
          "assets/parkings/gorakhpur_zoo_parking.png",
          "assets/parkings/gorakhpur_zoo_parking.png",
        ],
        '<div class="mapouter"><div class="gmap_canvas"><iframe class="gmap_iframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=gorakhpur railway station parking&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://capcuttemplate.org/">Capcuttemplate.org</a></div><style>.mapouter{position:relative;text-align:right;width:600px;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:600px;height:400px;}.gmap_iframe {width:600px!important;height:400px!important;}</style></div>',
        "Near Ramgarhtal, Rail Vihar Colony Phase 3rd, Gorakhpur, Uttar Pradesh 273016",
        4.9,
        "34",
        "20",
        15,
        30
    ),

    parking(
        "1",
        "Town Hall Parking",
        [
          "assets/parkings/town_hall_parking.png",
          "assets/parkings/town_hall_parking2.png",
        ],
        '<div class="mapouter"><div class="gmap_canvas"><iframe class="gmap_iframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=gorakhpur railway station parking&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://capcuttemplate.org/">Capcuttemplate.org</a></div><style>.mapouter{position:relative;text-align:right;width:600px;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:600px;height:400px;}.gmap_iframe {width:600px!important;height:400px!important;}</style></div>',
        "Town Hall , Golghar, Gorakhpur, Uttar Pradesh 273001",
        4.9,
        "34",
        "20",
        15,
        30
    ),


  ];

  List<parking> getData(){
    return this.list;
  }
}