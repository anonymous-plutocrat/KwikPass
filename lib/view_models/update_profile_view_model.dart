
import 'package:road_to_flutter/constants/routes.dart';
import 'package:road_to_flutter/locator.dart';
import 'package:road_to_flutter/models/user_model.dart';
import 'package:road_to_flutter/services/database_store.dart';
import 'package:road_to_flutter/services/navigator_service.dart';
import 'package:road_to_flutter/view_models/base_model.dart';

class UpdateProfileViewModel extends BaseModel{
  FirestoreDB profile = locator<FirestoreDB>();
  NavigationService navigate = locator<NavigationService>();

  String _selectedgender = 'Sex';
  String get selectedGender => _selectedgender;

  void setSelectedGender(dynamic gender){
    _selectedgender = gender;
    notifyListeners();
  }

  Future updateProfile(fullname,country, countrycode)async{
    setBusy(true);
    var completeProfile = await profile.update(User(
      fullname: fullname,
      sex: _selectedgender,
      country: country,
      countrycode: countrycode
    ));
    setBusy(false);
    if(completeProfile is bool){
      if(completeProfile){
        navigate.navigateTo(HomeViewRoute);
      }
      else{
        return "This shit did not happen mate";
      }
    }
     else{
        return "Boo who motherfucker";
    }
  }
}