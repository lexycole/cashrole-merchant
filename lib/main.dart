import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:xcrowme/routes/route_helpers.dart';
import 'package:xcrowme/screens/splash_screen/index.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // The root of Xcrowme application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      home: SplashScreen(), 
      initialRoute: RouteHelper.getInitial(),
      getPages: RouteHelper.routes
    );
  }
}