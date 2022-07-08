 import 'package:flutter/material.dart';
import 'package:flutter_web/router/route_generator.dart';
import 'package:flutter_web/router/router.dart';
import 'package:flutter_web/services/navigation_service.dart';
import 'package:flutter_web/ui/pages/layout/main_layout_page.dart';

import 'locator.dart';

void main() {

  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: "/",
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      // routes: {
      //   '/stateful': (_) => CounterPage(),
      //   '/provider': (_) => CounterProviderPage(),
      // }, 
      // onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: ( _, child) {
        
        return MainLayoutPage(
          child: child ?? CircularProgressIndicator(),
          );
      },
      // home:
    );
  }
}
