// // import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:road_to_flutter/UIs/sharedUI/buttonUi.dart';
import 'package:road_to_flutter/shared/expansion_list.dart';
// import 'package:road_to_flutter/auth/auths.dart';
// import 'package:road_to_flutter/shared/buttonDecor.dart';
import 'package:road_to_flutter/shared/inputDecor.dart';
import 'package:road_to_flutter/shared/uihelpers.dart';
// import 'package:road_to_flutter/view_models/sign_in_view_model.dart';
import 'package:road_to_flutter/view_models/sign_up_view_model.dart';



class SignUp extends StatelessWidget {
  Widget build(BuildContext context) {

    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    // final fullnameController = TextEditingController();
    // final lastnameController = TextEditingController();
    final usernameController = TextEditingController();
    // final countrycodeController = TextEditingController();
    // final countryController = TextEditingController();
    // final genderController = TextEditingController();
    

    return ViewModelProvider<SignUpViewModel>.withConsumer(
      viewModel: SignUpViewModel(),
      builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
               child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
              child: ListView(
                // mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InputField(
                    placeholder: 'Username',
                    controller: usernameController,
                  ),
                  verticalSpaceMedium,
                  InputField(
                    placeholder: 'Email',
                    controller: emailController,
                  ),
                  verticalSpaceMedium,
                  InputField(
                    placeholder: 'Password',
                    controller: passwordController,
                    password: true,
                    additionalNote: 'Password must be 6 chacraters long',
                    ),
                    verticalSpaceMedium,
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BusyButton(
                        title: 'Sign Up',
                        busy: model.busy,
                        onPressed: () {
                          model.signUp(
                            emailController.text, 
                            passwordController.text, 
                            usernameController.text,);
                      },
                    )
                  ],
                )
              ]
            ),
        ),
        )
      )
    );
  }
}