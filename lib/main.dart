import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared/preferences/preferencia.dart';
import 'package:shared/screens/homepage.dart';
import 'package:shared/screens/resultpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferencias.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: HomePage(),
      initialRoute: 'home',
      routes: {'home': (_) => HomePage(), 'result': (_) => ResultPage()},
    );
  }
}
