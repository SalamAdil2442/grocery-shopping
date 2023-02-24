import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Widget/bottom_navigationbar.dart';
import '../Widget/home_pages_post.dart';

class home_page extends StatefulWidget {
  home_page({super.key});
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i < 11; i++)
                  Image.asset(
                    "images/$i.jpg",
                    height: 275,
                    fit: BoxFit.cover,
                  )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5)
            ], color: Colors.white),
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              childAspectRatio: 1,
              children: [
                for (int i = 1; i < 12; i++)
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 230, 170),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5)
                        ]),
                    child: Image.asset(
                      "images/$i.jpg",
                      fit: BoxFit.cover,
                    ),
                  )
              ],
            ),
          ),
          home_page_post()
        ],
      ),
      bottomNavigationBar: bottom_navigationbar(),
    );
  }
}
