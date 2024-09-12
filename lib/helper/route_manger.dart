import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_12_9/core/views/screens/home_screen.dart';
import 'package:project_12_9/core/views/screens/not_found_screen.dart';

class RouteManger{
  static Route <dynamic> appRoute (RouteSettings settings){
    switch(settings.name){
      case '/home' : return MaterialPageRoute(builder: (ctx)=> HomeScreen());
      default :return MaterialPageRoute(builder: (ctx)=> NotFoundScreen());
    }
  }
}