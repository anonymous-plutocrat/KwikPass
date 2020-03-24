import 'package:flutter/material.dart';
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
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 300,
                height: 100,
                child: Image.network('https://i.picsum.photos/id/558/200/300.jpg')
              ),
              verticalSpaceTiny,
              CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Color(0xff19c7c1)),
              )
            ],
          ),
        ),
      ),
    );
  }
}