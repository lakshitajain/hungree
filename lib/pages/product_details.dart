import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_old_price;
  final product_detail_new_price;
  ProductDetails(
      {this.product_detail_name,
      this.product_detail_picture,
      this.product_detail_old_price,
      this.product_detail_new_price});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: Text('Agrispects'),
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () async {},
            ),
            new IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {}),
            new IconButton(
                icon: Icon(Icons.article_sharp, color: Colors.white),
                onPressed: () {}),
          ],
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
                height: 300.0,
                child: GridTile(
                  child: Container(
                    color: Colors.white70,
                    child: Image.asset(widget.product_detail_picture),
                  ),
                  footer: new Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: new Text(widget.product_detail_name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      title: new Row(children: <Widget>[
                        Expanded(
                            child: new Text(
                                "\u{20B9}${widget.product_detail_old_price}",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    decoration: TextDecoration.lineThrough))),
                        Expanded(
                            child: new Text(
                                "\u{20B9}${widget.product_detail_new_price}",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ))),
                      ]),
                    ),
                  ),
                )),
            // ============ The First Buttons =================
            Row(
              children: <Widget>[
                // ==============  the QTY Button ===========
                Expanded(
                    child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Quantity"),
                      ),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                // ==============  the Buy Now Button ===========
                Expanded(
                    child: MaterialButton(
                        onPressed: () {},
                        color: Colors.green,
                        textColor: Colors.white,
                        elevation: 0.3,
                        child: new Text("Buy Now"))),
                new IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    color: Colors.green,
                    onPressed: () {}),
                new IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.green,
                    onPressed: () {})
              ],
            )
          ],
        ));
  }
}
