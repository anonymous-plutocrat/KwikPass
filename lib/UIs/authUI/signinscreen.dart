import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:road_to_flutter/UIs/authUI/signupscreen.dart';
// import 'package:road_to_flutter/UIs/homescreen.dart';
import 'package:road_to_flutter/auth/auths.dart';
import 'package:road_to_flutter/shared/inputDecor.dart';



class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {

    Auths _auths = Auths();
    final _formKey = GlobalKey<FormState>(); 
    String email = '';
    String password = '';
    String error = '';

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text('Sign In'),
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
            children: <Widget> [ 
            Column(
            children: <Widget>[
              SizedBox(height: 20,),
                Center(
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: inputDecor.copyWith(hintText:'Email',hintStyle: TextStyle(fontSize: 12)),
                    validator: (value){
                      if(value.isEmpty){
                        return 'Field cannot be empty';
                      }
                      return null;
                    },
                    onChanged: (value){
                      setState(() => email = value);
                    },
                  ),
                ),
               SizedBox(height: 20,),
                Center(
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    obscureText: true,
                    decoration: inputDecor.copyWith(hintText:'Password',hintStyle: TextStyle(fontSize: 12)),
                    validator: (value){
                      if(value.isEmpty){
                        return 'Field cannot be empty';
                      }
                      return null;
                    },
                    onChanged: (value){
                      setState(() => password = value);
                    },
                  ),
                ),
              SizedBox(height: 30,),
              FlatButton(
                child: Text('SignIn'), 
                onPressed: ()async {
                  if(_formKey.currentState.validate()){
                     var result = await _auths.signInUser(email, password);
                     if(result == null){
                       setState(() {
                         error = 'Invalid credentials please correct them';
                       });
                     }
                    //  return HomeScreen();
                  }
                  // return SpinKitChasingDots(size: 70, color: Colors.pink,);
                },
              color: Colors.pinkAccent,),
              SizedBox(height: 10,),
              Text(error,style: TextStyle(color: Colors.red),),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(color: Colors.black),
                  children:<TextSpan>[
                    TextSpan(
                      text: 'Sign up', 
                      style: TextStyle(color: Colors.pinkAccent),
                      recognizer: TapGestureRecognizer()
                      ..onTap = (){
                        print('object');
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context){ return SignUp();}));
                      }
                      ),
                  ]
                  ),
                ),
            ],
          ),
         ],
        )
      ),
    );
  }
}