import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
 
 @override
 createState() {
   //retornamos una nueva instancia de nuestro state
   return _ContadorPageState();
 }
 
}

// Estado del stateFull widget, siempre llevara STATE ya que es un standard
class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle( fontSize: 25);

  int _conteo = 0;

  //este estado solo se utiliza en esta pagina y con el "_" (privado/private)
  // obligamos a que no se use fuera de este archivo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull Contador'),
        centerTitle: true,
        elevation: 2.5,
        backgroundColor: Color.fromRGBO(103, 219, 204, 1),
        foregroundColor: Color.fromRGBO(0, 0, 0, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Numero de taps:', style: _estiloTexto,),
            Text( '$_conteo' , style: _estiloTexto,)
          ],
        )
      ),
      floatingActionButton: _crearBotones()

      //SE COMENTA POR QUE YA NO SE USARA, EN SU LUGAR SE USARA UN METODO PRIVADO
      /* FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

          //para modificar el state (redibujar el widget)
          setState(() {
            _conteo++;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, */
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget> [
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++ );
  }

  void _sustraer() {
    setState(() => _conteo-- );
  }

  void _reset() {
    setState(() => _conteo = 0 );
  }
}
