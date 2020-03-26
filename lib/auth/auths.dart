import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:road_to_flutter/locator.dart';
import 'package:road_to_flutter/models/user_model.dart';
import 'package:road_to_flutter/services/database_store.dart';

class Auths{
  

  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  final GoogleSignIn _gAuth = GoogleSignIn();

  final FirestoreDB makeUser = locator<FirestoreDB>();


  User _user;
  User get user => _user;

  Future _populateUser(FirebaseUser user)async{
    if(user != null){
      _user = await makeUser.getUser(user.uid);
    }
  }

  // FirebaseAuth signup
  Future signUpUser({@required String email,@required String password,@required String firstname,@required String lastname,@required String username,@required String sex,@required String country,@required String countrycode}) async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;

      await makeUser.createUser(User(
        email: email,
        id: result.user.uid,
        country: country,
        firstname: firstname,
        lastname: lastname,
        countrycode: countrycode,
        sex: sex,
        username: username,
      ));
      return user != null;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
  // firebase Auth Signin
  Future signInUser(String email, String password)async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      await _populateUser(result.user);
      return user != null;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
  // Google signIn
  Future googleSignIn() async{
    try{
      GoogleSignInAccount result = await _gAuth.signIn();
      GoogleSignInAuthentication authenticate = await result.authentication;
      AuthCredential creden = GoogleAuthProvider.getCredential(
      accessToken: authenticate.accessToken,
      idToken: authenticate.idToken,
      );
      AuthResult authRes = await _auth.signInWithCredential(creden);
      FirebaseUser user = authRes.user;
      return user != null;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  // For the love of signing out
  Future signOut()async{
    try{
      _auth.signOut();
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
  Future googleSignOut() async{
    try{
      _gAuth.signOut();
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
  
  Future<bool> userAvailbale() async{
    var user = await _auth.currentUser();
    await _populateUser(user);
    return user != null;
  }
}