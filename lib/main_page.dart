import 'package:barberhub_app/data/datasource/barber_shop/barber_shop_remote_datasource.dart';
import 'package:barberhub_app/presentation/barber_shop/bloc/bloc/barber_shop_bloc.dart';
import 'package:barberhub_app/presentation/booking/page/booking_page.dart';
import 'package:barberhub_app/presentation/home/page/home_page.dart';
import 'package:barberhub_app/presentation/home/page/bottom_bar_navigation_page.dart';
import 'package:barberhub_app/presentation/profile/page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BarberShopBloc(BarberShopRemoteDatasource()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: BottomBarNavigation(),
        routes: {
          // '/login': (context) => const LoginPage(),
          // '/register': (context) => const RegisterPage(),
          '/home': (context) => const HomePage(),
          '/booking': (context) => const BookingPage(),
          '/profile': (context) => const ProfilePage(),
        },
      ),
    );
  }
}
