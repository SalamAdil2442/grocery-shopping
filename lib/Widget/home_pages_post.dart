import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:v2/pages/Item_page.dart';

class home_page_post extends StatefulWidget {
  const home_page_post({super.key});

  @override
  State<home_page_post> createState() => _home_page_postState();
}

class _home_page_postState extends State<home_page_post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            blurRadius: 5, spreadRadius: 1, color: Colors.grey.withOpacity(0.9))
      ]),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "sale",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              for (int i = 1; i < 11; i++)
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 161, 107, 107).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 4)
                    ],
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // ignore: prefer_const_constructors
                          Navigator.pushNamed(context, "Item_page");
                        },
                        child: Image.asset(
                          "images/$i.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Item Sale",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$50 ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange),
                                ),
                                Text(
                                  "/ 1KG",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.orange,
                                  size: 28,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
