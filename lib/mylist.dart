import 'package:flutter/material.dart';

void main() => runApp(MyList());

class Product {
  int id;
  String name;
  double price;
  String picture;


  Product(int id, String name, double price, String picture,){
    this.id = id;
    this.name = name;
    this.price = price;
    this.picture = picture;
  }
}

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  // List<String> myProduct = ['มะพร้าว', 'แตงโม', 'ทุเรียน', 'มะม่วง', 'กล้วย',];
  List<Product> products = [
    Product(1, "ชาเย็น", 20 ,"https://cf.shopee.co.th/file/7c74603ea581efc9f84fc81712150a52"),
    Product(2, "โอเลี้ยง", 20, "https://cf.shopee.co.th/file/7c74603ea581efc9f84fc81712150a52"),
    Product(3, "ฃานม", 20, "https://cf.shopee.co.th/file/7c74603ea581efc9f84fc81712150a52"),
    Product(4, "ฃาเขียว", 20, "https://cf.shopee.co.th/file/7c74603ea581efc9f84fc81712150a52"),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('All Product'),
        ),
        body: Column(
            //  children: myProduct.map((prd) =>Text(prd)).toList() {
            children: products.map((p) {
          return ListTile(
            leading: Image.network(p.picture),
            title: Text(p.name),
            subtitle: Text("Price : ฿" + p.price.toString()),
          );
        }).toList()),
      ),
    );
  }
}
