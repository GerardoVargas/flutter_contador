//Aqui ira la logica de la aplicacion

import 'package:contador/src/pages/Contador_pages.dart';
//import 'package:contador/src/pages/Home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build( context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Widget Center es para alinear lo que queremos
      home: Center(
        child: ContadorPage()
      )
    );
  }
}