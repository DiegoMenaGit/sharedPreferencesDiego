import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../preferences/preferencia.dart';

class ResultPage extends StatefulWidget {
  @override
  ResultPageState createState() => ResultPageState();
}

class ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://aniyuki.com/wp-content/uploads/2022/11/aniyuki-chainsaw-man-phone-wallpaper-1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Divider(),
            Text(
              'Username:  ${Preferencias.nom}',
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            Text(
              'Password: ${Preferencias.pass}',
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            Text(
              'Email: : ${Preferencias.email}',
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 120,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: NetworkImage('${cambiar()}'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

cambiar() {
  String enlace = '';
  if (Preferencias.character == 1) {
    enlace =
        'https://i.pinimg.com/474x/27/8e/70/278e704cfa17f47e189071163254274a.jpg';
    if (Preferencias.diablo) {
      enlace =
          'https://comicvine.gamespot.com/a/uploads/scale_small/11146/111467896/8051829-0880970184-d5305.jpg';
    }
  }
  if (Preferencias.character == 2) {
    enlace =
        'https://i.pinimg.com/564x/d4/06/f4/d406f4ea3fb523252b5332f6b1676ca2.jpg';
    if (Preferencias.diablo) {
      enlace =
          'https://i.pinimg.com/564x/d6/4e/ec/d64eec8a3293ff1f6479c69afe875578.jpg';
    }
  }
  if (Preferencias.character == 3) {
    enlace =
        'https://i.pinimg.com/474x/99/d3/d6/99d3d65bd812937c475e553d36f6da3f.jpg';
    if (Preferencias.diablo) {
      enlace =
          'https://i.pinimg.com/736x/be/db/0c/bedb0c6a2fff749fa073fbd7adf0c9f4.jpg';
    }
  }
  if (Preferencias.character == 4) {
    enlace =
        'https://i.pinimg.com/originals/b9/02/37/b90237522cf5b3c68c6ab24ded118216.jpg';
    if (Preferencias.diablo) {
      enlace =
          'https://i.pinimg.com/564x/50/60/05/50600572139d7a8b9856549139d11017.jpg';
    }
  }
  if (Preferencias.character == 5) {
    enlace =
        'https://i.pinimg.com/736x/74/e2/ea/74e2eaa93cafe3ecfa142b773e9ee3b3.jpg';
    if (Preferencias.diablo) {
      enlace =
          'https://i.pinimg.com/736x/e3/3b/be/e33bbe7b7775616a01f0828c6ec6257c.jpg';
    }
  }
  if (Preferencias.character == 6) {
    enlace =
        'https://i.pinimg.com/736x/4f/06/1a/4f061a21b73b33f41e309d6a96e67206.jpg';
    if (Preferencias.diablo) {
      enlace =
          'https://i.pinimg.com/564x/54/ae/10/54ae105b29fb44c3a6c68a382393e57e.jpg';
    }
  }

  return enlace;
}
