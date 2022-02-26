import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple),
      home: const MyHomePage(title: 'AdotePet'),
    );
  }
}

class Kitten {
  const Kitten(
      {required this.name,
      required this.description,
      required this.age,
      required this.imageUrl});

  final String name;
  final String description;
  final int age;
  final String imageUrl;
}

final String server =
    defaultTargetPlatform == TargetPlatform.android ? "10.0.2.2" : "localhost";

final List<Kitten> _kittens = <Kitten>[

  Kitten(
      name: 'Joazinho',
      description: 'Um lindo gato',
      age: 13,
      imageUrl: 'http://$server:8000/01.jpg'),
  Kitten(
      name: 'Pedrinho',
      description: 'Um lindo gato',
      age: 12,
      imageUrl: 'http://$server:8000/02.jpg'),
  Kitten(
      name: 'Simba',
      description: 'Um lindo gato',
      age: 11,
      imageUrl: 'http://$server:8000/03.jpg'),
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }


widget _listItemBuilder(BuildContext context, int index){
  return new Container(
   padding: const EdgeInsets.only(left: 16.0),
   alignment: Alignments.centerLeft,
   child: Text(_kittens[index].name,
    style: Theme.of(context).textTheme.headline),
  );
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("AdotePet"),
    ),
    body: ListView.builder(
      itemCount: _kittens.length,
      itemExtent: 60.0,
      itemBuilder: _listItemBuilder,
      ),
    );
  }




