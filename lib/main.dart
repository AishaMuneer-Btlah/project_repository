import 'package:flutter/material.dart';
import 'package:project_12_9/helper/route_manger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
    initialRoute: '/home',
      onGenerateRoute: RouteManger.appRoute,
    );
  }
}


