

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List cosas = [
    Imagenes(
        url:'https://www.viajejet.com/wp-content/viajes/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada-1440x810.jpg',
        nombre: 'Paisaje 1'
    ),
    Imagenes(
      url:'https://img.ecologiahoy.com/2017/06/paisajes-naturales-26-1280x720.jpeg',
      nombre: 'Paisaje 2'
    ),
    Imagenes(
      url:'https://static.vix.com/es/sites/default/files/styles/4x3/public/imj/p/paisajes-espectaculares-del-mundo-1.jpg',
      nombre:'Paisaje 3',
    ),
    Imagenes(
      url:'https://www.nationalgeographic.com.es/medio/2018/02/27/playa-de-isuntza-lekeitio__1280x720.jpg',
      nombre:'Paisaje 4',
    ),
    Imagenes(
      url:'https://i2.wp.com/blog.vivaaerobus.com/wp-content/uploads/2020/04/paisajes-de-mexico.jpg?resize=1050%2C590&ssl=1',
      nombre:'Paisaje 5',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicación totalmente segura ;)'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(

          padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: cosas.length,
            itemBuilder: (context,index){
              return ListTile(leading: Image.network(cosas[index].url),title: Text(cosas[index].nombre),);
            },
          ),

        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            final snackBar = SnackBar(
              content: Text('No me funcionó :('),
              action: SnackBarAction(
                label: 'F',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );
            Scaffold.of(context).showSnackBar(snackBar);

          },
          child: Icon(Icons.favorite),
          backgroundColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}

class Imagenes{
  String url;
  String nombre;

  Imagenes({this.url, this.nombre});
}

