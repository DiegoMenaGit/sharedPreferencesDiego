import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared/screens/resultpage.dart';

import '../preferences/preferencia.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crear Usuario"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://aniyuki.com/wp-content/uploads/2022/11/aniyuki-chainsaw-man-phone-wallpaper-1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            TextFormField(
              initialValue: Preferencias.nom,
              decoration: InputDecoration(
                labelText: "Nombre de Usuario",
              ),
              onChanged: (value) {
                Preferencias.setnom = value;
                setState(() {});
              },
            ),
            TextFormField(
              initialValue: Preferencias.pass,
              decoration: InputDecoration(
                labelText: "Contraseña",
              ),
              obscureText: true,
              onChanged: (value) {
                Preferencias.setpass = value;
                setState(() {});
              },
            ),
            TextFormField(
              initialValue: Preferencias.email,
              decoration: InputDecoration(
                labelText: "Email",
              ),
              onChanged: (value) {
                Preferencias.setemail = value;
                setState(() {});
              },
            ),
            SwitchListTile(
                value: Preferencias.diablo,
                title: const Text('Modo Diablo'),
                onChanged: (value) {
                  Preferencias.setdiablo = value;
                  setState(() {});
                }),
            RadioListTile<int>(
                value: 1,
                groupValue: Preferencias.character,
                title: const Text('Power'),
                onChanged: (value) {
                  Preferencias.setcharacter = value ?? 1;
                  setState(() {});
                }),
            RadioListTile<int>(
                value: 2,
                groupValue: Preferencias.character,
                title: const Text('Denji'),
                onChanged: (value) {
                  Preferencias.setcharacter = value ?? 2;
                  setState(() {});
                }),
            RadioListTile<int>(
                value: 3,
                groupValue: Preferencias.character,
                title: const Text('Kobeni'),
                onChanged: (value) {
                  Preferencias.setcharacter = value ?? 3;
                  setState(() {});
                }),
            RadioListTile<int>(
                value: 4,
                groupValue: Preferencias.character,
                title: const Text('Aki'),
                onChanged: (value) {
                  Preferencias.setcharacter = value ?? 4;
                  setState(() {});
                }),
            RadioListTile<int>(
                value: 5,
                groupValue: Preferencias.character,
                title: const Text('Makima'),
                onChanged: (value) {
                  Preferencias.setcharacter = value ?? 5;
                  setState(() {});
                }),
            RadioListTile<int>(
                value: 6,
                groupValue: Preferencias.character,
                title: const Text('Angel'),
                onChanged: (value) {
                  Preferencias.setcharacter = value ?? 6;
                  setState(() {});
                }),
            FloatingActionButton(
              child: Text("Save"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
