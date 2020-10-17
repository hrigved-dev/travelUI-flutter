import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCategories extends StatefulWidget {
  @override
  _ImageCategoriesState createState() => _ImageCategoriesState();
}

class _ImageCategoriesState extends State<ImageCategories> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ImageContainer(
                image: 'images/hotel4.jpg',
                hotel: 'AMUSANT',
                hoteltype: 'Luxury'),
            ImageContainer(
                image: 'images/hotel5.jpg',
                hotel: 'QUALITY INN',
                hoteltype: 'Luxury'),
            ImageContainer(
                image: 'images/hotel6.jpg',
                hotel: 'CALIFORNIA',
                hoteltype: 'Luxury'),
            ImageContainer(
                image: 'images/hotel7.jpg',
                hotel: 'SUNFLOWER HOTEL',
                hoteltype: 'Luxury'),
          ],
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String image;
  final String hotel;
  final String hoteltype;
  ImageContainer({@required this.image, this.hotel, this.hoteltype});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin:
            EdgeInsets.only(left: 10.0, top: 10.0, right: 15.0, bottom: 10.0),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(17.0),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
              child: Text(
                hotel,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 30.0),
              child: Text(
                hoteltype,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 50.0),
              child: Icon(
                Icons.star,
                color: Colors.orange,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, bottom: 50.0),
              child: Icon(
                Icons.star,
                color: Colors.orange,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, bottom: 50.0),
              child: Icon(
                Icons.star,
                color: Colors.orange,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 85.0, bottom: 50.0),
              child: Icon(
                Icons.star,
                color: Colors.orange,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110.0, bottom: 50.0),
              child: Icon(
                Icons.star,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
