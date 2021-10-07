import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'account_circle': Icons.account_circle,
  'image': Icons.image,
  'camera_alt': Icons.camera_alt,
  'movie': Icons.movie,
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.blueGrey);
}
