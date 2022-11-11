import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/Widgets/AppBarWidget.dart';

import '../Widgets/ItemBottomNavBar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
         children: [
           AppBarWidget(),
           Padding(padding: EdgeInsets.all(16),
            child: Image.asset("assets/images/pizza.png", height: 300,),
           ),
           SizedBox(height: 20,),
           Container(
             width: double.infinity,
             color: Colors.white,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Column(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(top: 60, bottom: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         RatingBar.builder(
                           initialRating: 4,
                           minRating: 1,
                           direction: Axis.horizontal,
                           itemCount: 5,
                           itemSize: 18,
                           itemPadding: EdgeInsets.symmetric(horizontal: 4),
                           itemBuilder: (context, _) => Icon(Icons.star, color: Colors.red),
                           onRatingUpdate: (index) {},
                         ),
                         Text("\$10", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                         ),
                       ],
                     ),
                   ),
                   Padding(padding: EdgeInsets.only(top: 10, bottom: 20,),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("Hot Pizza", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                         ),
                         Container(width: 90,
                             padding: EdgeInsets.all(5),
                           decoration: BoxDecoration(
                             color: Colors.red,
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Icon(CupertinoIcons.minus, color: Colors.white, size:20),
                               Text("1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                               ),
                               Icon(CupertinoIcons.plus, color: Colors.white, size:20),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                   Padding(padding: EdgeInsets.symmetric(vertical: 10),
                     child: Text("Taste Our Hot Pizza at low price, this is famous pizza and we will love it. It will cost us at low price, we hope we will enjoy and order many times.",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                     ),
                   ),
                   Padding(padding: EdgeInsets.symmetric(vertical: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("Delivery Time:",
                           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                           textAlign: TextAlign.justify,
                         ),
                         Row(
                           children: [
                             Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Icon(CupertinoIcons.clock, color: Colors.red,),
                             ),
                             Text("30 Minutes",
                               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                               textAlign: TextAlign.justify,
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
           )
         ],
        ),
      ),
      bottomNavigationBar: ItemBottomNavBar(),
      // Arc(
      //   edge: Edge.TOP,
      //   arcType: ArcType.CONVEY,
      //   height: 30,
      //   child: Container(
      //     width: double.infinity,
      //     color: Colors.white,
      //     child: Padding(
      //     padding: EdgeInsets.only(top: 60, bottom: 10),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           RatingBar.builder(
      //             initialRating: 4,
      //             minRating: 1,
      //             direction: Axis.horizontal,
      //             itemCount: 5,
      //             itemSize: 18,
      //             itemPadding: EdgeInsets.symmetric(horizontal: 4),
      //             itemBuilder: (context, _) => Icon(Icons.star, color: Colors.red),
      //             onRatingUpdate: (index) {},
      //           ),
      //           Text("\$10", style: TextStyle(),
      //           ),
      //         ],
      //       ),
      //   ),
      //   ),
      // ),
    );
  }
}
