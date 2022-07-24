import 'package:flutter/material.dart';
import 'package:flutter_hive_tuto/my_adapter.dart';
import 'package:hive_flutter/hive_flutter.dart';

// void main() => runApp(MyApp());
late Box box;
Future<void> main() async {
  await Hive.initFlutter();
  box = await Hive.openBox('box');
  Hive.registerAdapter(MyObjectAdapterAdapter());
  box.put('myAdapter', MyAdapter(name: 'name', age: 12));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: MyBody());
  }
}

class MyBody extends StatefulWidget {
  MyBody({Key? key}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  MyAdapter myAdapter = box.get('myAdapter');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [Text('${myAdapter.name}'), Text('${myAdapter.age}')],
        ),
      ),
    );
  }
}
