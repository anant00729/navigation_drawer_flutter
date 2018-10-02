import 'package:flutter/material.dart';

class DeleteProduct extends StatefulWidget {
  @override
  _DeleteProductState createState() => _DeleteProductState();
}

class _DeleteProductState extends State<DeleteProduct> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Delele Product"),
      ),
    );
  }
}