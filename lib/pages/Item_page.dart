import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Item_page extends StatefulWidget {
  const Item_page({super.key});

  @override
  State<Item_page> createState() => _Item_pageState();
}

class _Item_pageState extends State<Item_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 390,
        width: double.infinity,
        color: Color.fromARGB(255, 255, 230, 170),
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 25,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              blurRadius: 4,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
