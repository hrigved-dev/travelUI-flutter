import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/components/categories.dart';
import 'package:travel_ui/components/image_categories.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _kcurrentindex = 0;
  Color _kcurrentcolor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 35.0,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('images/IMG_20191230_170221_Bokeh.jpg'),
                    radius: 20.0,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Hrigved',
                        style: TextStyle(
                          fontFamily: 'Alata',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Pick your destination',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Search for hotels, flights..',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.orangeAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Categories(),
            ),
            ImageCategories(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _kcurrentindex,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.orangeAccent,
              ),
              icon: Icon(
                Icons.home,
                color: _kcurrentcolor,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.orangeAccent,
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.bookmark,
                color: Colors.orangeAccent,
              ),
              icon: Icon(
                Icons.bookmark,
                color: _kcurrentcolor,
              ),
              title: Text(
                'Bookmark',
                style: TextStyle(
                  color: Colors.orangeAccent,
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.location_on,
                color: Colors.orangeAccent,
              ),
              icon: Icon(
                Icons.location_on,
                color: _kcurrentcolor,
              ),
              title: Text(
                'Location',
                style: TextStyle(
                  color: Colors.orangeAccent,
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.orangeAccent,
              ),
              icon: Icon(
                Icons.favorite,
                color: _kcurrentcolor,
              ),
              title: Text(
                'Favorite',
                style: TextStyle(
                  color: Colors.orangeAccent,
                ),
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _kcurrentindex = index;
            });
          },
        ),
      ),
    );
  }
}
