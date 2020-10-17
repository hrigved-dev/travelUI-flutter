import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Trending", "Promotion", "Top Hotels"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              children: [
                Text(
                  categories[index],
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.orange : Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    height: 3,
                    width: 50,
                    color: selectedIndex == index ? Colors.orange : Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
      ),
    );
  }
}
