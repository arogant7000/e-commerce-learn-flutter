import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// components import
import 'package:beng/components/horizontal_listview.dart';
import 'package:beng/components/Product.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Pendeklarasian (pembuatan) widget Carousel
    // Carousel di bentuk dalam container dngan panjang tinggi 200px
    // dengan boxfit gambar adalah cover.
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpeg'),
          AssetImage('images/c2.png'),
          AssetImage('images/c4.jpg')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotColor: Colors.red,
      ),
    );

    // Class HomePage (STFulL) menggunakan Scaffold
    // isi dari scaffold berdasarkan kerangka layout terisi dari drawer, appBar, dan body
    return Scaffold(
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //
            // HEADER DRAWER
            //
            new UserAccountsDrawerHeader(
              accountName: Text('Ichsan'),
              accountEmail: Text('ichsan.mulya@outlook.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.black),
            ),

            //
            // BODY DRAWER
            //
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorite'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),

            //
            // FOOTER DRAWER
            //
            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: Text(
          'Beng',
          style: TextStyle(color: Colors.red),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          // pemanggilan carousel
          imageCarousel,

          // padding widget Categories
          new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Text('Categories'),
          ),

          // Horizontal ListView
          HorizontalList(),

          // padding widget Recent Product
          new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Text('Recent Product'),
          ),

          Container(
            height: 320.0,
            child: Product(),
          )
        ],
      ),
    );
  }
}
