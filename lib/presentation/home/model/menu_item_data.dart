import 'package:flutter/material.dart';

class MenuItemData {
  final String iconPath;
  final String title;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color? iconColor;

  MenuItemData({
    required this.iconPath,
    required this.title,
    required this.onTap,
    this.backgroundColor,
    this.iconColor,
  });
}
