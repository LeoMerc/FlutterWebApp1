import 'dart:js';

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_web/ui/pages/views/counter_provider_view.dart';
import 'package:flutter_web/ui/pages/views/counter_view.dart';
import 'package:flutter_web/ui/pages/views/page_404_view.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: _homeHandler,
      transitionType: TransitionType.none,
    );
    router.define(
      '/stateful',
      handler: _counterHandler,
      transitionType: TransitionType.none,
    );

  router.define(
      '/stateful/:base',
      handler: _counterHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      '/provider',
      handler: _providerHandler,
      transitionType: TransitionType.none,
    );

    router.notFoundHandler = _pageNotFound;

    
  }

//handlers
  static Handler _homeHandler = Handler(
    handlerFunc: (context, params) => Container(),
  );
  static Handler _counterHandler = Handler(
    handlerFunc: (context, params) => CounterView(base: params['base']?[0] ?? '0'),
  );

  static Handler _providerHandler = Handler(
    handlerFunc: (context, params) => CounterProviderView(),
  );
//404
  static Handler _pageNotFound = Handler(
    handlerFunc: (context, params) => View404(),
  );
}
