

import 'dart:js';

import 'package:fluro/fluro.dart';
import 'package:flutter_web/ui/pages/views/counter_provider_view.dart';
import 'package:flutter_web/ui/pages/views/counter_view.dart';
import 'package:flutter_web/ui/pages/views/page_404_view.dart';


class Flurorouter {

 static final FluroRouter router = FluroRouter();

  static void configureRoutes (){
    router.define(
      '/',
      handler: _counterHandler,
    );

       router.define(
      '/provider',
      handler: _providerHandler,
    );

       router.define(
      '/404',
      handler: _pageHandler,
    );
  }


//handlers
static Handler _counterHandler = Handler(
  handlerFunc: (context, params) => CounterView(),
);

static Handler _providerHandler = Handler(
  handlerFunc: (context, params) => CounterProviderView(),
);

static Handler _pageHandler = Handler(
  handlerFunc: (context, params) => View404(),
);

}