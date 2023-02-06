import 'package:flutter/cupertino.dart';

class Validation extends ChangeNotifier {

  String emailID ="rahul@gmail.com";
  String password="1234";
  bool  isObSecure = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final  emailChaker = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  isEmailValid(String value){
    return (emailChaker.hasMatch(value));
  }

  isPasswordValid(String value)
  {
    return(value.length>=8 && value.length<16);
  }
  checkEmailValidation(String email){
    if(!isEmailValid(email)){
      return "Email is Invalid";
    }else{
      return null;
    }
  }

  checkPasswordValidation(String password){
    if(!isPasswordValid(password)){
      return "Password is Invalid";
    }else{
      return null;
    }
  }

   myVarClear(){
     emailID = emailID;
      password = password;
       isObSecure = isObSecure;
     notifyListeners();
   }
   myController() {
   emailController = TextEditingController();
   passwordController = TextEditingController();
   notifyListeners();
  }

   passwordVisible(){
      isObSecure =!isObSecure;
     notifyListeners();
   }

}