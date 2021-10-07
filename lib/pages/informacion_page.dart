import 'package:flutter/material.dart';
import 'dart:async';

class InformacionPage extends StatefulWidget {
  const InformacionPage({Key key}) : super(key: key);

  @override
  _ListaInformacionPage createState() => _ListaInformacionPage();
}
class _ListaInformacionPage extends State<InformacionPage> {
  double _valorSlider = 100.0;

  bool _bloquearSlider = false;
  bool _bloquearSlider2 = false;
  ScrollController _scrollController = new ScrollController();

  
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conóceme mejor'),
        backgroundColor: Colors.indigo[400],
        shadowColor: Colors.blue[400],
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/1397862866.jpg'),
              radius: 20.0,
            ),
          )
        ],
      ),
      body: ListView(
        controller: _scrollController,
        children: <Widget>[
          _cardTipo3(),
          SizedBox(
            height: 20.0,
          ),
          Divider(),
         _cardTipo1(),
          SizedBox(
            height: 30.0,
          ), 
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
        
      ),
      
    );
  }


  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.face,
              color: Colors.indigo[400],
            ),
            title: Text('Datos'),
            subtitle: Text('\nMi nombre es Edith Aylin Guerrero Herrera, soy estudiante dela carrera de Desarrollo y Gestión de software.'),
          ),
        ],
      ),
    );

  } 


  Widget _cardTipo2() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.note,
              color: Colors.indigo[400],
            ),
            title: Text('Normalmente...'),
            subtitle: Text('\nCuando no estoy con cosas de la escolares o laborales'+
            ', \nme gusta ver películas ya que me resulta intersante el poder analizarlas, es también por eso que practico fotografía '+
            ', y de vez en cuando me gusta jugar videojuegos para entretenerme o desestresarme (a veces).')
          )
        ]
      ),
    );  
  }


  Widget _cardTipo3(){
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: AssetImage('assets/1397862866.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            width: _valorSlider,
            fit: BoxFit.contain
          ),
          _crearSlider(),
          _crearSwitch(),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.blueAccent,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: card,
      ),
    );
  }

   Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 50.0,
      max: 500.0,
      onChanged: (_bloquearSlider==true || _bloquearSlider2==true) 
        ? null 
        : (valor) {
        setState(() {
          _valorSlider = valor;
        });
      }
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear tamaño'),
      value: _bloquearSlider2, 
      onChanged: (valor){
        setState(() {
          _bloquearSlider2 = valor;
        });
      }
    );
  }
}