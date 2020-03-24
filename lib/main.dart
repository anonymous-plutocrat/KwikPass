import 'package:flutter/material.dart';
import 'package:road_to_flutter/UIs/allUI/signupscreen.dart';
import 'package:road_to_flutter/UIs/allUI/startup_view.dart';
import 'package:road_to_flutter/UIs/router.dart';
import 'package:road_to_flutter/locator.dart';
import 'package:road_to_flutter/manager/dialogmanager.dart';
import 'package:road_to_flutter/services/dialog_service.dart';
import 'package:road_to_flutter/services/navigator_service.dart';



void main() {
  locatorSetup();
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      builder: (context, child) => Navigator(
        key: locator<DialogService>().dialogNavigationKey,
        onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (context) => DialogManager(child: child)),
      ),
      home: StartUpView(),
      onGenerateRoute: generateRoute,
      navigatorKey: locator<NavigationService>().navigationKey,
    );
  }
}

