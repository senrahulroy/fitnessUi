import 'package:flutter/cupertino.dart';

class Validation extends ChangeNotifier {

  final String _emailID ="rahulnai@gmail.com";
  final String _password="Rahul@1234";

  final  emailChaker = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

   emailAddress(){
     emailChaker;
     notifyListeners();
   }

   passwordChaker(){

   }

}