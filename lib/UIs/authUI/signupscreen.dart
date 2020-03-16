import 'package:flutter/material.dart';
import 'package:road_to_flutter/shared/inputDecor.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
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
              TextFormField(
                decoration: inputDecor.copyWith(hintText:'FirstName',hintStyle: TextStyle(fontSize: 12)),
                validator: (value){
                  if(value.isEmpty){
                    return 'Field cannot be empty';
                  }
                  return null;
                },
                onChanged: (value){
                  setState(() => firstName = value);
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: inputDecor.copyWith(hintText:'LastName',hintStyle: TextStyle(fontSize: 12)),
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
              SizedBox(height: 20,),
                TextFormField(
                decoration: inputDecor.copyWith(hintText:'Email',hintStyle: TextStyle(fontSize: 12)),
                validator: (value){
                  if(value.isEmpty){
                    return 'Field cannot be empty';
                  }
                  return null;
                },
                onChanged: (value){
                  setState(() => lastName = value);
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: inputDecor.copyWith(hintText:'UserName',hintStyle: TextStyle(fontSize: 12)),
                validator: (value){
                  if(value.isEmpty){
                    return 'Field cannot be empty';
                  }
                  return null;
                },
                onChanged: (value){
                  setState(() => userName = value);
                },
              ),
               SizedBox(height: 20,),
              TextFormField(
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
              SizedBox(height: 20,),
              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: inputDecor.copyWith(hintText:'Date of Birth',hintStyle: TextStyle(fontSize: 12)),
                validator: (value){
                  if(value.isEmpty){
                    return 'Field cannot be empty';
                  }
                  return null;
                },
                onChanged: (value){
                  setState(() => dateOfBirth = value);
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: inputDecor.copyWith(hintText:'Country',hintStyle: TextStyle(fontSize: 12)),
                validator: (value){
                  if(value.isEmpty){
                    return 'Field cannot be empty';
                  }
                  return null;
                },
                onChanged: (value){
                  setState(() => country = value);
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: inputDecor.copyWith(hintText:'State',hintStyle: TextStyle(fontSize: 12)),
                validator: (value){
                  if(value.isEmpty){
                    return 'Field cannot be empty';
                  }
                  return null;
                },
                onChanged: (value){
                  setState(() => state = value);
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: inputDecor.copyWith(hintText:'City',hintStyle: TextStyle(fontSize: 12)),
                validator: (value){
                  if(value.isEmpty){
                    return 'Field cannot be empty';
                  }
                  return null;
                },
                onChanged: (value){
                  setState(() => city = value);
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: inputDecor.copyWith(hintText:'Phone Number',hintStyle: TextStyle(fontSize: 12)),
                validator: (value){
                  if(value.isEmpty){
                    return 'Field cannot be empty';
                  }
                  return null;
                },
                 onChanged: (value){
                  setState(() => phoneNo = value);
                },
              ),
              SizedBox(height: 20,),
              RaisedButton(child: Text('SignUp'), onPressed: (){},color: Colors.pinkAccent,elevation: 0.1,),
             ]
           ),
         ],
        ),
      ),
    );
  }
}