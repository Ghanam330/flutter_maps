
import 'package:flutter/material.dart';
import 'package:flutter_maps/ui/screen/login_screen.dart';

import 'constnat/strings.dart';

class AppRouter {
  Route? genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(builder: (_) =>  LoginScreen());
    }
  }
}
