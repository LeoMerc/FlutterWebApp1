//handlers
  import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../ui/pages/views/counter_provider_view.dart';
import '../ui/pages/views/counter_view.dart';
import '../ui/pages/views/page_404_view.dart';

final Handler homeHandler = Handler(
    handlerFunc: (context, params) => Container(),
  );
  final Handler counterHandler = Handler(
    handlerFunc: (context, params) =>
        CounterView(base: params['base']?[0] ?? '0'),
  );

  final Handler providerHandler = Handler(handlerFunc: (context, params) {

   return CounterProviderView(base: params['q']? [0] ?? '5') ;
  });
//404
  final Handler pageNotFound = Handler(
    handlerFunc: (context, params) => View404(),
  );

