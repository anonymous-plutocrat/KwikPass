import 'package:flutter/material.dart';
import 'package:road_to_flutter/shared/inputDecor.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>(); 
    String username = '';
    String password = '';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Sign In'),
        elevation: 0,
      ),
          body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            TextFormField(
              decoration: inputDecor.copyWith(hintText:'UserName'),
              validator: (value) => value.isEmpty ? 'Field Cannot be Empty' : null,
              onChanged: (value){
                setState(() => username = value);
              },
            ),
             SizedBox(height: 20,),
            TextFormField(
              decoration: inputDecor.copyWith(hintText:'Password'),
              obscureText: true,
              validator: (value) => value.length < 8 ? 'Password must be 8 characters long' : null,
              onChanged: (value){
                setState(() => password = value);
              }             
              ,
            ),
            SizedBox(height: 30,),
            FlatButton(child: Text('SignIn'), onPressed: (){},color: Colors.pinkAccent,)
          ],
        )
      ),
    );
  }
}