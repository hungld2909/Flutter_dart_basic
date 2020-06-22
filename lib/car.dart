import 'package:flutter/cupertino.dart';

class Car{
  String name;
  int yearOfProduction;
  // This is the constructor
  //!
  // Car(String name, int yearOfProduction){
  //   this.name = name;
  //   this.yearOfProduction = yearOfProduction; // classical way
  // }
  //! New way
  // Car(this.name,this.yearOfProduction);
  // constructor with named arguments
  Car({
    
   @required this.name, //@required = yêu cầu phải nhập, nếu không nhập khi biên dịch nó sẽ báo warning
  this.yearOfProduction = 2021, // what about "default parameter"?
  // yearOfProduction: default= 2021, nếu người dùng k nhập thì nó sẽ hiện thị là 2021

  });

  @override
  String toString(){
    return '${this.name} - ${this.yearOfProduction}';
  }
   void doSomething(){
    print('I am doing something...');
    this.handleEvent();
  }
  //method with named arguments ?
  void sayHello(String personName){
    print('Hello $personName');
  }
  //Fuction as 'a variable'
  Function handleEvent; 
}