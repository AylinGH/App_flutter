import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:final_guerrero/pages/fotos_page.dart';
import 'package:final_guerrero/pages/home_page.dart';
import 'package:final_guerrero/pages/informacion_page.dart';
import 'package:final_guerrero/pages/notas_agregar_page.dart';
import 'package:final_guerrero/pages/notas_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en','US'),
        const Locale('es','ES')
      ],
      title: 'AylinGH',
      theme: ThemeData(fontFamily: 'Altone'),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'informacion': (BuildContext context) => InformacionPage(),
        
        'pictures': (BuildContext context) => NotasPage(),
        'movies': (BuildContext context) => NotasAgregarPage(),
        'fotos': (BuildContext context) => FotosPage(),
      },
    );
  }
}
