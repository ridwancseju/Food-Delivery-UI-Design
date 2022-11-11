import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:clippy_flutter/arc.dart';
class NewestItemsWidget extends StatelessWidget {
  const NewestItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          // Single Item
          //for(int i=0; i<10; i++)
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 380,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "itemPage");
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/pizza.png", height: 120, width: 150,
                    ),
                  ),
                ),
                Container(
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 5),
                      Text("Hot Pizza", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text("Tasty Our Hot Pizza, We provide our great food", style: TextStyle(fontSize: 16),
                      ),

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
                      Text('\$10',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite_border, color: Colors.red, size: 26,
                    ),
                    Icon(CupertinoIcons.cart, color: Colors.red, size: 26,
                    ),
                  ],
                ),
                ),
              ],
            ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/burger.png", height: 120, width: 150,
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 5),
                        Text("Hot Burger", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text("Tasty Our Hot Burger, We provide our great food", style: TextStyle(fontSize: 16),
                        ),

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
                        Text('\$10',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite_border, color: Colors.red, size: 26,
                        ),
                        Icon(CupertinoIcons.cart, color: Colors.red, size: 26,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/drink.png", height: 120, width: 150,
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 5),
                        Text("Cold Drink", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text("Tasty Our Cold Drink, We provide our great food", style: TextStyle(fontSize: 16),
                        ),

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
                        Text('\$10',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite_border, color: Colors.red, size: 26,
                        ),
                        Icon(CupertinoIcons.cart, color: Colors.red, size: 26,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/biryani.png", height: 120, width: 150,
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 5),
                        Text("Chicken Biryani", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text("Tasty Our Chicken Biryani, We provide our great food", style: TextStyle(fontSize: 16),
                        ),

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
                        Text('\$10',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite_border, color: Colors.red, size: 26,
                        ),
                        Icon(CupertinoIcons.cart, color: Colors.red, size: 26,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/salan.png", height: 120, width: 150,
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 5),
                        Text("Chicken Salan", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text("Tasty Our Chicken Salan, We provide our great food", style: TextStyle(fontSize: 16),
                        ),

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
                        Text('\$10',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite_border, color: Colors.red, size: 26,
                        ),
                        Icon(CupertinoIcons.cart, color: Colors.red, size: 26,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        ),
      ),
    );
  }
}
