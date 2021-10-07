import 'package:flutter/material.dart';
import 'package:final_guerrero/providers/menu_provider.dart';
import 'package:final_guerrero/utils/icono_util.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AylinGH'),
        backgroundColor: Colors.indigo[400],
        shadowColor: Colors.blue[400],
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];

  if (data == null) {
    return [];
  }

  data.forEach((item) {
    final tempItem = ListTile(
      title: Text(item['texto']),
      leading: getIcon(item['icon']),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.deepPurple,
      ),
      onTap: () {
        Navigator.pushNamed(context, item['ruta']);
      },
    );
    opciones.add(tempItem);
    opciones.add(Divider());
  });
  return opciones;
}
