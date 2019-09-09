import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "name": "Blazer" ,
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120000,
      "price": 85000
    },
    {
      "name": "Red Blazer" ,
      "picture": "images/products/blazer2.jpeg",
      "old_price": 100000,
      "price": 55000
    },
    {
      "name": "Dress" ,
      "picture": "images/products/dress1.jpeg",
      "old_price": 120000,
      "price": 85000
    },
    {
      "name": "Dress 2" ,
      "picture": "images/products/dress2.jpeg",
      "old_price": 120000,
      "price": 85000
    },
    {
      "name": "Hill" ,
      "picture": "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 85
    },
//    {
//      "name": "Hill 2" ,
//      "picture": "images/products/hills2.jpeg",
//      "old_price": 120,
//      "price": 85
//    },
//    {
//      "name": "Pants" ,
//      "picture": "images/products/pants1.jpg",
//      "old_price": 120,
//      "price": 85
//    },
//    {
//      "name": "Pants 2" ,
//      "picture": "images/products/pants2.jpeg",
//      "old_price": 120,
//      "price": 85
//    },
//    {
//      "name": "Shoe" ,
//      "picture": "images/products/shoe1.jpg",
//      "old_price": 120,
//      "price": 85
//    },
//    {
//      "name": "Skt" ,
//      "picture": "images/products/skt1.jpeg",
//      "old_price": 120,
//      "price": 85
//    },
//    {
//      "name": "Skt 2" ,
//      "picture": "images/products/skt2.jpeg",
//      "old_price": 120,
//      "price": 85
//    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return SingleProduct(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price']
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  SingleProduct({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: prod_name, child: Material(
        child: InkWell(
          onTap: (){},
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(
                  prod_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),),
                title: Text("Rp. $prod_price", style: TextStyle(color: Colors.red, fontSize: 12.0 , fontWeight: FontWeight.w800),),
                subtitle: Text("Rp. $prod_old_price", style: TextStyle(color: Colors.black54, fontSize: 12.0 ,fontWeight: FontWeight.w800, decoration: TextDecoration.lineThrough),),
              ),
            ),
            child: Image.asset(prod_picture, fit: BoxFit.cover,),
          ),
        ),
      )),
    );
  }
}

