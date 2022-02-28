import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          buttonColor: Colors.purple,
          buttonTheme:
              const ButtonThemeData(textTheme: ButtonTextTheme.primary)),
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
      imageUrl: 'https://www4.pictures.crowdleap.com/mp/ZqAtXUbrm7_x.jpg'),
  Kitten(
      name: 'Pedrinho',
      description: 'Um lindo gato',
      age: 12,
      imageUrl:
          'data:image/jpeg;base64,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'),
  Kitten(
      name: 'Simba',
      description: 'Um lindo gato',
      age: 11,
      imageUrl:
          'https://www.clubeparacachorros.com.br/wp-content/uploads/2018/05/husky-filhote.jpg'),
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  Widget _dialogBuilder(BuildContext context, Kitten kitten) {
    ThemeData localTheme = Theme.of(context);

    return SimpleDialog(children: [
      Image.network(
        kitten.imageUrl,
        fit: BoxFit.fill,
      ),
      Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            kitten.name,
            style: localTheme.textTheme.displayMedium,
          ),
          Text(
            '${kitten.age} months old',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            kitten.description,
            style: localTheme.textTheme.bodyMedium,
          ),
          SizedBox(height: 16.0),
          Align(
              alignment: Alignment.centerRight,
              child: Wrap(
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('I\'M ALLERGIC'),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: const Text('ADOPT'),
                  )
                ],
              ))
        ]),
      )
    ]);
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return new GestureDetector(
        onTap: () => showDialog(
            context: context,
            builder: (context) => _dialogBuilder(context, _kittens[index])),
        child: Container(
          padding: const EdgeInsets.only(left: 16.0),
          alignment: Alignment.centerLeft,
          child: Text(_kittens[index].name,
              style: Theme.of(context).textTheme.headline4),
        ));
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
}
