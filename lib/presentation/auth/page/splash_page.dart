import 'package:barberhub_app/assets/assets.gen.dart';
import 'package:barberhub_app/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorPrimary900,
      body: Center(
        child: Assets.icons.icons.svg(
          width: 100,
          height: 100,
        ),  
      ),
    );
  }
}
