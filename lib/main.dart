import 'package:barberhub_app/data/datasource/barber_shop/barber_shop_remote_datasource.dart';
import 'package:barberhub_app/presentation/barber_shop/bloc/bloc/barber_shop_bloc.dart';
import 'package:barberhub_app/presentation/barber_shop/page/barber_shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BarberShopBloc(BarberShopRemoteDatasource()),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: BarberShopPage(),
      ),
    );
  }
}