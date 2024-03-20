import 'package:flutter/material.dart';
import 'package:avitia1212/pantallas1212/panel1212/panel_pantalla1212.dart';

void main() => runApp(MyAppCereso1212());

class MyAppCereso1212 extends StatelessWidget {
  const MyAppCereso1212({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cereso Avitia1212",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          useMaterial3: true),
      home: PanelPantalla1212(),
    );
  }
}
