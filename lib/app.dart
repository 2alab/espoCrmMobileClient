import 'dart:math';

import 'package:espo_contacts/credentials_store/store.dart';
import 'package:espo_contacts/pages/crm_page/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter/material.dart' hide Action;
import 'package:splashscreen/splashscreen.dart';

import 'credentials_store/state.dart';

Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'crm_page': CrmPage(),
    },
    visitor: (String path, Page<Object, dynamic> page) {
      if (page.isTypeof<CredentialsBaseState>()) {
        _connectFavoritesStateStore(page);
      }
      page.enhancer.append(
        /// View AOP
        viewMiddleware: <ViewMiddleware<dynamic>>[
          safetyView<dynamic>(),
        ],

        /// Adapter AOP
        adapterMiddleware: <AdapterMiddleware<dynamic>>[
          safetyAdapter<dynamic>()
        ],

        /// Effect AOP
        effectMiddleware: [
          _pageAnalyticsMiddleware<dynamic>(),
        ],

        /// Store AOP
        middleware: <Middleware<dynamic>>[
          logMiddleware<dynamic>(tag: page.runtimeType.toString()),
        ],
      );
    },
  );

  return MaterialApp(
    title: "EspoCrm syncronizer",
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
    home: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: "crm_page",
        title: new Text(
          'EspoCrm client',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        loaderColor: Colors.red),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}

void _connectFavoritesStateStore(Page<Object, dynamic> page) {
  page.connectExtraStore<CredentialsState>(CredentialsStore.store,
      (Object pagestate, CredentialsState appState) {
    final Cloneable p = pagestate;
    final CredentialsBaseState newState = p.clone() as CredentialsBaseState;
    newState.credentials = appState.credentials;
    return newState;
  });
}

EffectMiddleware<T> _pageAnalyticsMiddleware<T>({String tag = 'redux'}) {
  return (AbstractLogic<dynamic> logic, Store<T> store) {
    return (Effect<dynamic> effect) {
      return (Action action, Context<dynamic> ctx) {
        if (logic is Page<dynamic, dynamic> && action.type is Lifecycle) {
          print('${logic.runtimeType} ${action.type.toString()} ');
        }
        return effect?.call(action, ctx);
      };
    };
  };
}
