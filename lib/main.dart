import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'pages/create_product.dart';
import 'pages/add_product.dart';
import 'pages/update_product.dart';
import 'pages/delete_product.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Navigation Drawer App",
      theme: new ThemeData(
        primaryColor:  defaultTargetPlatform == TargetPlatform.android ? new Color(0xff5467ee) : Colors.white,
        accentColor: Colors.white
      ),
      home: new Home(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/create' : (context) => new CreateProduct(),
        '/add' : (context) => new AddProduct(),
        '/update' : (context) => new UpdateProduct(),
        '/delete' : (context) => new DeleteProduct(),
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title : new Text("Home"),
        elevation: defaultTargetPlatform == TargetPlatform.android ?  1.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
          new UserAccountsDrawerHeader(
                          
              accountName: new Text("Anant S Awasthy"),
              accountEmail: new Text("anant@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? new Color(0xff5467ee) : Colors.white,
                child: new Text("A", style: new TextStyle(fontSize: 28.0 , color: Theme.of(context).platform == TargetPlatform.android ? new Color(0xff5467ee) : Colors.white)),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? new Color(0xff5467ee) : Colors.white,
                  child : new Text("BN", style: new TextStyle(fontSize: 14.0 , color: Theme.of(context).platform == TargetPlatform.android ? new Color(0xff5467ee) : Colors.white))
                ),
               
              ],
          ),
            new Divider(),
            new ListTile(
              title: new Text("Create Product"),
              trailing: new Icon(Icons.create),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/create');
              },
            ),
            new ListTile(
              title: new Text("Add Product"),
              trailing: new Icon(Icons.add),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/add');
              },
            ),
            new ListTile(              title: new Text("Update Product"),
              trailing: new Icon(Icons.update),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/update');
              },
            ),
            new ListTile(
              title: new Text("Delete Product"),
              trailing: new Icon(Icons.delete),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/delete');
              },
            ),
            new Divider(),
            new ListTile(
              title : new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: (){
                Navigator.of(context).pop();
              },
            )
          ],
        )
      ),
      body: new Container(
        color: Colors.white,
        child : new Center(child : new Text("hello All"))
      )
    );
  }
}