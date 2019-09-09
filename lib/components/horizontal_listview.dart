import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/cats/accessories.png',
            image_caption: 'Accessories',
          ),
          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'images/cats/formal.png',
            image_caption: 'Formal',
          ),
          // Category(
          //   image_location: 'images/cats/tshirt.png',
          //   image_caption: 'Shirt',
          // ),
          // Category(
          //   image_location: 'images/cats/tshirt.png',
          //   image_caption: 'Shirt',
          // ),
          // Category(
          //   image_location: 'images/cats/tshirt.png',
          //   image_caption: 'Shirt',
          // ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  // instance variable

  final String image_location;
  final String image_caption;

  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location, width: 80.0, height: 70.0),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 11.0)),
            ),
          ),
        ),
      ),
    );
  }
}
