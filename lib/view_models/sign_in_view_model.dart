import 'package:road_to_flutter/auth/auths.dart';
import 'package:road_to_flutter/constants/routes.dart';
import 'package:road_to_flutter/locator.dart';
import 'package:road_to_flutter/services/navigator_service.dart';
import 'base_model.dart';

class SignInViewModel extends BaseModel{
  final Auths auths = locator<Auths>();
  final NavigationService navserve = locator<NavigationService>();


  Future signIn( email,  password)async{
      setBusy(true);
       var result = await auths.signInUser(email, password);
       print("This fucko signed-in");
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
       else{
          return 'I failed you man';
    }
  }
}