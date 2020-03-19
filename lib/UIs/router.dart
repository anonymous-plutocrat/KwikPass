import 'package:flutter/material.dart';
import 'package:road_to_flutter/UIs/authUI/signinscreen.dart';
// import 'package:road_to_flutter/UIs/authUI/signupscreen.dart';
import 'package:road_to_flutter/UIs/homescreen.dart';
import 'package:road_to_flutter/constants/routes.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SignInViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: SignIn(),
      );
    // case SignUpViewRoute:
    //   return _getPageRoute(
    //     routeName: settings.name,
    //     viewToShow: SignUp(),
    //   );
    case HomeViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: HomeScreen(),
      );
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}

PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}
