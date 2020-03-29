class User{
  final String id;
  final String fullname;
  final String username;
  final String sex;
  final String password;
  final String email;
  final String country;
  final String countrycode;

  User({this.id, this.fullname, this.username, this.sex, this.password, this.email, this.countrycode, this.country});
  User.fromData(Map<String,dynamic> data)
    :   id = data["id"],
        fullname = data["fullname"],
        username = data["username"],
        sex = data["sex"],
        password = data["password"],
        countrycode = data["countrycode"],
        email = data["email"],
        country = data["country"];

  Map<String,dynamic> toJson(){
    return {
      'id':id,
      'fullname':fullname,
      'username': username,
      'email':email,
      'sex': sex,
      'password':password,
      'countrycode':countrycode,
      'country':country
    };
  }
}