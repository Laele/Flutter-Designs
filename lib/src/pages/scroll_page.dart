import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ]
      )
      
    );
  }

  Widget _pagina1() {

    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        
      ],
    );
  }

  Widget _colorFondo() {

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {

    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }



  _pagina2() {

    return Center(
      child: Text('Pagina 2'),

    );
  }


}