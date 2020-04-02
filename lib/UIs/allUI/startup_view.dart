import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:road_to_flutter/shared/uihelpers.dart';
import 'package:road_to_flutter/view_models/startup_view_model.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<StartUpViewModel>.withConsumer(
      viewModel: StartUpViewModel(),
      onModelReady: (model) => model.handleStartUpLogic(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text('K w i k P a s s',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 30)),
              ),
              verticalSpaceTiny,
              // SpinKitHourGlass(size: 50, color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}