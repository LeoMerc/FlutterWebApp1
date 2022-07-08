import 'package:fluro/fluro.dart';
import 'route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: homeHandler,
      transitionType: TransitionType.none,
    );
    router.define(
      '/stateful',
      handler: counterHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      '/stateful/:base',
      handler: counterHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      '/provider',
      handler: providerHandler,
      transitionType: TransitionType.none,
    );

    router.notFoundHandler = pageNotFound;
  }
}
