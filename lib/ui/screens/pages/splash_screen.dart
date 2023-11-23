import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stockx/main.dart';
import 'package:stockx/resources/ui_resources.dart';
import 'package:stockx/ui/screens/tabbed_pages/main_tabbed_page.dart';

import '../tabbed_pages/home.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _SplashScreenState();
  }

}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.immersive
    );
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
          builder: (_) => const MainTabbedPage()
      ));
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.surfaceColor
      ),
        child: Center(
          child: Image.asset(
              AppImages.stockXLogo,
            width: 121,
            height: 166,
          ),
        ),
      ),
    );
  }

}