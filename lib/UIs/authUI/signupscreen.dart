// // import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:road_to_flutter/UIs/sharedUI/buttonUi.dart';
// import 'package:road_to_flutter/auth/auths.dart';
// import 'package:road_to_flutter/shared/buttonDecor.dart';
import 'package:road_to_flutter/shared/inputDecor.dart';
import 'package:road_to_flutter/shared/uihelpers.dart';
import 'package:road_to_flutter/view_models/sign_in_view_model.dart';
import 'package:road_to_flutter/view_models/sign_up_view_model.dart';



class SignUp extends StatelessWidget {
  Widget build(BuildContext context) {

    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    

    return ViewModelProvider<SignUpViewModel>.withConsumer(
      viewModel: SignUpViewModel(),
      builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InputField(
                  placeholder: 'Email',
                  controller: emailController,
                ),
                verticalSpaceSmall,
                InputField(
                  placeholder: 'Password',
                  password: true,
                  controller: passwordController,
                ),
                verticalSpaceMedium,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BusyButton(
                      title: 'Sign U',
                      busy: model.busy,
                      onPressed: () {
                        model.signUp(emailController.text, passwordController.text);
                    },
                  )
                ],
              )
            ]
          ),
        )
      )
    );
  }
}