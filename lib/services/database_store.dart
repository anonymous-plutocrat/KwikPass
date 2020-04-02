import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:road_to_flutter/models/user_model.dart';

class FirestoreDB{
  final CollectionReference _userCollectionRef = Firestore.instance.collection('User Info');

  Future createUser(User user)async{
    try{
      await _userCollectionRef.document(user.id).setData(user.toJson());
    }
    catch(e){
      return e.toString();
    }
  }

  Future getUser(String uid) async{
    try{
      var userData = await _userCollectionRef.document(uid).get();
      return User.fromData(userData.data);
    }
    catch(e){
      return e.toString();
    }
  }
  Future update(User user) async{
    try{
      await _userCollectionRef.document(user.id).updateData(user.toJson());
    }
    catch(e){
      return e.toString();
    }
  }
}