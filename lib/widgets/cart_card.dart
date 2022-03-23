import 'package:adispot/models/product_model.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class cart_card extends StatelessWidget {
  product item;
  cart_card({ Key? key,required this.item }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.6,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ),

        child: Row(
          
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Image.asset(item.img, height: 90, width: 90, fit:  BoxFit.cover,),
            ),
            SizedBox(width: 20,),

            Expanded(
              child: Row(
                children: [
                  

                  
                  Expanded(
                    child: Column(
                      children: [

                        Container(
                        padding: EdgeInsets.only(top: 17),
                        alignment: Alignment.topLeft,
                        child: Text(
                          item.product_name,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                                      
                      ),

                        Container(
                        padding: EdgeInsets.only(top: 7),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Rs. ${item.price.toString()}",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                                      
                      ),
                      ] 
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.delete_outline),
                      color: Colors.grey,
                      onPressed: (){
                        
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}