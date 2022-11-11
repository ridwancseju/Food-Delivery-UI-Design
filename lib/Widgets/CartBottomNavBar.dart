import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("Total", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 15),
                Text("\$80", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Order Now", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
