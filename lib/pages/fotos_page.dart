import 'package:flutter/material.dart';
import 'dart:async';

class FotosPage extends StatefulWidget {
  const FotosPage({Key key}) : super(key: key);

  @override
  _FotosPageState createState() => _FotosPageState();
}

class _FotosPageState extends State<FotosPage> {
  
  List<int> _listaN = [];
  int _ultimoItem = 0;

  bool _isLoading = false;

  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
            obtenerData();
          }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería'),
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
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaN.length,
      itemBuilder: (BuildContext context, int index) {
        final indice = _listaN[index];
        return FadeInImage(
          image: NetworkImage('https://placekitten.com/640/360?image=$indice'),
          placeholder: AssetImage('loading.gif'),
        );
      }
    );
  }

  void _agregar10() {
    for (var i = 1; i <= 10; i++) {
      _ultimoItem++;
      _listaN.add(_ultimoItem);
    }
    setState(() {
      
    });
  }

  Future<Timer> obtenerData() async{
    _isLoading = true;
    setState(() {
      
    });
    final duration = new Duration(seconds: 2);

    return new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
    _agregar10();
  }


  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 15.0,)
        ],
      );
    } else {
      return Container();
    };
  }

}