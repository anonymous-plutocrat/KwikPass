// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:road_to_flutter/auth/auths.dart';
import 'package:road_to_flutter/constants/routes.dart';
import 'package:road_to_flutter/locator.dart';
import 'package:road_to_flutter/services/navigator_service.dart';
import 'package:road_to_flutter/view_models/base_model.dart';


class SignUpViewModel extends BaseModel{
  final Auths _auths = locator<Auths>();
  final NavigationService navserve = locator<NavigationService>();


  Future signUp( email,  password)async{
      setBusy(true);
       var result = await _auths.signUpUser(email, password);
       setBusy(false);
       if(result is bool){
         if(result){
           navserve.navigateTo(HomeViewRoute);
         }
         else{
          // SnackBar(
          //   content: Text('SignUp Failed :('),
          //   backgroundColor: Colors.yellow,
          //  duration: Duration(seconds: 5),
          // );
          return 'BOOOO HOOOO BITCH';
         }
       }
  }
}