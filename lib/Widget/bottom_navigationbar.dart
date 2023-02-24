import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class bottom_navigationbar extends StatefulWidget {
  const bottom_navigationbar({super.key});

  @override
  State<bottom_navigationbar> createState() => _bottom_navigationbarState();
}

class _bottom_navigationbarState extends State<bottom_navigationbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.home,
                size: 30,
                color: Colors.orange,
              ),
              Text(
                "Home",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.search,
                size: 30,
                color: Colors.orange,
              ),
              Text(
                "Search",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          InkWell(
            onTap: () {
              //Navigator.pushNamed(context, Item_page());
            },
            child: Column(
              children: [
                Icon(
                  Icons.shopping_cart_checkout_sharp,
                  size: 30,
                  color: Colors.orange,
                ),
                Text(
                  "My Cart",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Column(
            children: [
              Icon(
                Icons.person,
                size: 30,
                color: Colors.orange,
              ),
              Text(
                "Account",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
