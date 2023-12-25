import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:managment/data/models/add_date.dart';
import 'package:managment/data/models/add_date_g.dart';
import 'widgets/button_nav_bar.dart';




void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}