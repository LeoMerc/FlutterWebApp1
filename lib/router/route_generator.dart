import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/ui/pages/counter_page.dart';
import 'package:flutter_web/ui/pages/counter_provider.dart';
import 'package:flutter_web/ui/pages/page_404.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(CounterPage(), '/stateful');

      case '/provider':
        return _fadeRoute(CounterProviderPage(), '/provider');

      default:
        return _fadeRoute(Page404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String RouteName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: RouteName),
        pageBuilder: (_, __, ___) => child,
        transitionsBuilder: (_, animation, __, ___) => 
        
        (kIsWeb) ? child : CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: animation, child: child, linearTransition: true),
       
    );
  }
}
