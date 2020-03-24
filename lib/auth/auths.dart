import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auths{
  

  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  final GoogleSignIn _gAuth = GoogleSignIn();

  // FirebaseAuth signup
  Future signUpUser({@required String email,@required String password,@required String firstname,@required String lastname,@required String username,@required String sex,@required String country,@required String countrycode}) async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
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
    return user != null;
  }
}