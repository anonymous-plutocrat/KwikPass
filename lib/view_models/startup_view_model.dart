// import 'package:road_to_flutter/UIs/homescreen.dart';
import 'package:road_to_flutter/auth/auths.dart';
import 'package:road_to_flutter/constants/routes.dart';
import 'package:road_to_flutter/locator.dart';
import 'package:road_to_flutter/services/navigator_service.dart';
import 'package:road_to_flutter/view_models/base_model.dart';

class StartUpViewModel extends BaseModel{

  final Auths auths = locator<Auths>();
  final NavigationService navigate = locator<NavigationService>();

  Future handleStartUpLogic()async{
    var userAvailable = await auths.userAvailbale();
    
    if(userAvailable){
      navigate.navigateTo(HomeViewRoute);
    }else{
      navigate.navigateTo(SignInViewRoute);
    }
  }
}