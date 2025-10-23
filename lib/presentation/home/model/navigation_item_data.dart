import 'package:flutter/material.dart';

class NavigationItemData {
  final String iconPath;
  final String label;
  final Widget page;

  NavigationItemData({
    required this.iconPath,
    required this.label,
    required this.page,
  });
}
