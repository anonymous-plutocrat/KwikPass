import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auths{
  
  // Initializing firebase authentication as '_auth'
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Initializing google_sign_in as _gAuth
  final GoogleSignIn _gAuth = GoogleSignIn();

  // Here we are making users with just their email and password
  Future signUpUser(String email, String password) async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
  // Here we are signing in already created users
  Future signInUser(String email, String password)async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
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
      return user;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
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
}