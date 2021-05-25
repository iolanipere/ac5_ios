import 'package:flutter/material.dart';

void main() => runApp(CardApp());

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card_imagenes de Perez'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_a_photo),
            onPressed:(){},
            ),
          ],
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              _items('https://github.com/iolanipere/car/blob/main/car1.jpg?raw=true','Carro 1','Ford GT40'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/iolanipere/car/blob/main/car2.jpg?raw=true','Carro 2','Mclaren Senna'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/iolanipere/car/blob/main/car3.jpg?raw=true','Carro 3','M.A. Gtr Black Series'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/iolanipere/car/blob/main/car4.jpg?raw=true','Carro 4','Lamborguini Sian'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/iolanipere/car/blob/main/car5.jpg?raw=true','Carro 5','Ferrari SF90 '),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/iolanipere/car/blob/main/car6.jpg?raw=true','Carro 6','Koenigsegg Jesko'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/iolanipere/car/blob/main/car7.jpg?raw=true','Carro 7','Porshe 911 GT3'),//x item
              SizedBox(height:5.0,),
              _items('https://github.com/iolanipere/car/blob/main/car8.jpg?raw=true','Carro 8','Tesla Roadster'),//x item
              SizedBox(height:5.0,),
            ]
          ),
        ),
      ),
    );
  }
  Widget _items(String url, String producto, String subtitulo) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.blueGrey[500],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text(subtitulo,
                      style: TextStyle(color: Colors.black, fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}