import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:road_to_flutter/UIs/authUI/signinscreen.dart';
// import 'package:road_to_flutter/UIs/homescreen.dart';
import 'package:road_to_flutter/auth/auths.dart';
import 'package:road_to_flutter/shared/inputDecor.dart';





class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  Auths _auths = Auths();
  final _formKey = GlobalKey<FormState>();
  String firstName = '';
  String lastName = '';
  String userName = '';
  String password = '';
  String dateOfBirth = '';
  String country= '';
  String state = '';
  String city = '';
  String phoneNo = '';
  String email = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        centerTitle: true,
        title: Text('SignUp'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
            children: <Widget> [Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            SizedBox(height: 20,),
              CustomTextField(
                hint: 'FirstName',
                icon: Icon(Icons.person),
                validator: (value){
                    if(value.isEmpty){
                      return 'Field cannot be empty';
                    }
                    return null;
                  },
                  onSaved: (input) {
                    firstName = input;
                },
              ),
              SizedBox(height: 20,),
              CustomTextField(
                hint: 'E-mail',
                icon: Icon(Icons.email),
                validator: (value){
                    if(value.isEmpty){
                      return 'Field cannot be empty';
                    }
                    return null;
                  },
                  onSaved: (input) {
                    email = input;
                },
              ),
              SizedBox(height: 20,),
                CustomTextField(
                hint: 'Lastname',
                icon: Icon(Icons.person),
                validator: (value){
                    if(value.isEmpty){
                      return 'Field cannot be empty';
                    }
                    return null;
                  },
                  onSaved: (input) {
                    lastName = input;
                },
              ),
              SizedBox(height: 20,),
              CustomTextField(
                hint: 'Username',
                icon: Icon(Icons.person),
                validator: (value){
                    if(value.isEmpty){
                      return 'Field cannot be empty';
                    }
                    return null;
                  },
                  onSaved: (input) {
                    userName = input;
                },
              ),
               SizedBox(height: 20,),
              CustomTextField(
                obsecure: true,
                hint: 'Password',
                icon: Icon(Icons.lock),
                validator: (value){
                    if(value.isEmpty){
                      return 'Field cannot be empty';
                    }
                    return null;
                  },
                  onSaved: (input) {
                    lastName = input;
                },
              ),
              SizedBox(height: 20,),
              CustomTextField(
                hint: 'Date of Birth',
                icon: Icon(Icons.date_range),
                validator: (value){
                    if(value.isEmpty){
                      return 'Field cannot be empty';
                    }
                    return null;
                  },
                  onSaved: (input) {
                    dateOfBirth = input;
                },
              ),
              SizedBox(height: 20,),
              CustomTextField(
                hint: 'Country',
                icon: Icon(Icons.place),
                validator: (value){
                    if(value.isEmpty){
                      return 'Field cannot be empty';
                    }
                    return null;
                  },
                  onSaved: (input) {
                    lastName = input;
                },
              ),
              SizedBox(height: 20,),
              CustomTextField(
                hint: 'State',
                icon: Icon(Icons.place),
                validator: (value){
                    if(value.isEmpty){
                      return 'Field cannot be empty';
                    }
                    return null;
                  },
                  onSaved: (input) {
                    state = input;
                },
              ),
              SizedBox(height: 20,),
              CustomTextField(
                hint: 'City',
                icon: Icon(Icons.place),
                validator: (value){
                    if(value.isEmpty){
                      return 'Field cannot be empty';
                    }
                    return null;
                  },
                  onSaved: (input) {
                    city = input;
                },
              ),
              SizedBox(height: 20,),
              CustomTextField(
                hint: 'Phone Number',
                icon: Icon(Icons.contact_phone),
                validator: (value){
                    if(value.isEmpty){
                      return 'Field cannot be empty';
                    }
                    return null;
                  },
                  onSaved: (input) {
                    phoneNo = input;
                },
              ),
              SizedBox(height: 20,),
              SizedBox(height: 10,),
              Text(error,style: TextStyle(color: Colors.red),),
              RaisedButton(
                child: Text('SignUp'),
                onPressed: ()async{
                  if(_formKey.currentState.validate()){
                    var result = await _auths.signUpUser(email, password);
                    if(result == null){
                      setState(() {
                        error = 'Invalid credentials please correct them';
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context){ return HomeScreen();}));
                      });
                    }
                    // return HomeScreen();
                  }
                  // return SpinKitChasingDots(size: 70, color: Colors.pink,);
                },
                color: Colors.pinkAccent,elevation: 0.1,),
            SizedBox(height: 10,),
            RichText(
              text: TextSpan(
                text: 'Have an account? ',
                style: TextStyle(color: Colors.black),
                children:<TextSpan>[
                  TextSpan(
                    text: 'Sign in', 
                    style: TextStyle(color: Colors.pinkAccent),
                    recognizer: TapGestureRecognizer()
                    ..onTap = (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){ return SignIn();}));
                      }
                    ),
                  ]
                ),
              ),
             ]
           ),
         ],
        ),
      ),
    );
  }
}