import 'package:flutter/material.dart';

class AgentsModel {
  static const String agents = 'Agents';

  final String image;
  final String subImage;
  final String icon;
  final String title;
  final String description;
  final List<Color> colors;

  AgentsModel({
    required this.image,
    required this.subImage,
    required this.icon,
    required this.title,
    required this.description,
    required this.colors,
  });
}
