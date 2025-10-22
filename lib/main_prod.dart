import 'package:barberhub_app/config/flavor_config.dart';
import 'package:barberhub_app/main_page.dart';
import 'package:flutter/material.dart';


void main() {
  FlavorConfig(
    flavor: Flavor.production,
    baseUrl: 'https://api.barberhub.com',
  );
  runApp(MainPage());
}
