import 'package:flutter/material.dart';

class MapsModel {
  static const String maps = 'Maps';

  final String splahBg;
  final String title;
  final String maps_image;
  final String description;
  final List<Color> colors;

  MapsModel({
    required this.splahBg,
    required this.title,
    required this.maps_image,
    required this.description,
    required this.colors,
  });
}
