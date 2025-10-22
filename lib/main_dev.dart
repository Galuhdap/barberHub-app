import 'package:barberhub_app/config/flavor_config.dart';
import 'package:barberhub_app/data/service/lib/network_constans.dart';
import 'package:barberhub_app/main_page.dart';
import 'package:flutter/material.dart';


void main() async {

  FlavorConfig(
    flavor: Flavor.development,
    baseUrl: NetworkConstants.BASE_URL_DEV,
  );
  runApp(const MainPage());
}