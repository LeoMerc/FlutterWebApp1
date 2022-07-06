
import 'package:flutter/material.dart';
import 'package:flutter_web/ui/pages/counter_page.dart';
import 'package:flutter_web/ui/pages/counter_provider.dart';
import 'package:flutter_web/ui/pages/page_404.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute (RouteSettings settings){
    switch(settings.name){
      case '/stateful':
      
        return MaterialPageRoute(
          settings: RouteSettings(name: '/stateful'),
          builder: (_) => CounterPage()
          );
        
        case '/provider':
          return  MaterialPageRoute(
          settings: RouteSettings(name: '/provider'),
          builder: (_) => CounterProviderPage()
          );

          default:
           return MaterialPageRoute(
          settings: RouteSettings(name: '/404'),
          builder: (_) => Page404()
          );

    }
  }
}