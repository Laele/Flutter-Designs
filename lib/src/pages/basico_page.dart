import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Column( 
         children: [
          _crearImagen(),
          _crearDescripcion(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(), 
          ],
        ),
      ),

    );
  }


  Widget _crearImagen(){

    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://i.ytimg.com/vi/c7oV1T2j5mc/maxresdefault.jpg'),
        height: 190.0,
        fit:BoxFit.cover,
      ),
    );

  }

  _crearDescripcion() {
 
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:30.0, vertical:20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Lago Entre Montañas', style: estiloTitulo),
                SizedBox(height: 7.0),
                Text('Ubicación Desconocida', style: estiloSubtitulo),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0)),

          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'Share'),
        

      ],
    );
  }

  Widget _accion(IconData icon,String texto){
    return Column(
      children:[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ]
    );
  }

  Widget _crearTexto(){
    return SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal:40.0),
        child: Text(
          'Id laborum ipsum do laborum nostrud commodo laboris non amet reprehenderit aliquip id. Ullamco reprehenderit ipsum enim qui cillum sunt ut id. Culpa reprehenderit in pariatur est cillum pariatur tempor sunt est. Pariatur pariatur labore velit nostrud esse reprehenderit aliquip minim. Esse elit in aliqua id consequat.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}