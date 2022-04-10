import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(Provider.of<Data>(context).data),
        ),
        body: const Level1(),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  const Level1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.amber,
          child: const Text('level1'),
        ),
        const Level2()
      ],
    );
  }
}

class Level2 extends StatelessWidget {
  const Level2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [Text(Provider.of<Data>(context).data),const Level3()],
    );
  }
}

class Level3 extends StatelessWidget {
  const Level3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (value) {
            Provider.of<Data>(context, listen: false).changeData(value);
          },
        ),
      ],
    );
  }
}

class Data extends ChangeNotifier {
  String data = 'some data';
  void changeData(newData) {
    data = newData;
    notifyListeners();
  }
}
