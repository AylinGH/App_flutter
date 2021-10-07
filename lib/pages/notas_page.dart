import 'package:flutter/material.dart';

class NotasPage extends StatelessWidget {
  const NotasPage({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: Text('FT'),
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
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo3(),
            SizedBox(height: 30.0,),
            _cardTipo4(),
            SizedBox(height: 30.0,),
            _cardTipo5(),
            SizedBox(height: 30.0,),
            _cardTipo6(),
            SizedBox(height: 30.0,),
          ],
        ),
    );
  }

 

  Widget _cardTipo2(){
    final card =  Container(
      child: Column(
        children: <Widget>[
         const FadeInImage(
            image: AssetImage('assets/T-1.jpg'),
            placeholder: AssetImage('assets/test.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.00),
            child: Text('2018'),
          )
        ],
      ),
      );
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: card,
        ),
      );
  }
    Widget _cardTipo3(){
    final card =  Container(
      child: Column(
        children: <Widget>[
         const FadeInImage(
            image: AssetImage('assets/AB-5.jpg'),
            placeholder: AssetImage('assets/test.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.00),
            child: Text('2020'),
          )
        ],
      ),
      );
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: card,
        ),
      );
  }
    Widget _cardTipo4(){
    final card =  Container(
      child: Column(
        children: <Widget>[
         const FadeInImage(
            image: AssetImage('assets/E-5.jpg'),
            placeholder: AssetImage('assets/test.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.00),
            child: Text('2020'),
          )
        ],
      ),
      );
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: card,
        ),
      );
  }
    Widget _cardTipo5(){
    final card =  Container(
      child: Column(
        children: <Widget>[
         const FadeInImage(
            image: AssetImage('assets/K-25.jpg'),
            placeholder: AssetImage('assets/test.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.00),
            child: Text('2019'),
          )
        ],
      ),
      );
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: card,
        ),
      );
  }
    Widget _cardTipo6(){
    final card =  Container(
      child: Column(
        children: <Widget>[
         const FadeInImage(
            image: AssetImage('assets/W-8.jpg'),
            placeholder: AssetImage('assets/test.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.00),
            child: Text('2019'),
          )
        ],
      ),
      );
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: card,
        ),
      );
  }
  
}