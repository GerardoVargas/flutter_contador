import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle( fontSize: 25);

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    /* 
      Scaffold: Es un widget que contiene una estructura basica definida,
      en ella viene por defecto un Appbar, un body y un float button.
    */
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
        elevation: 2.5,
        backgroundColor: Color.fromRGBO(103, 219, 204, 1),
        foregroundColor: Color.fromRGBO(0, 0, 0, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Numero de taps:', style: estiloTexto,),
            Text( '$conteo' , style: estiloTexto,)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola Mundo!');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}