import 'package:flutter/material.dart';
import 'calculation.dart'; // calculation is a "module"
import 'car.dart';

void main() {
  //! For
  // for(int i = 0; i < numbers.length;i++){
  //   print(numbers[i]);

  // }

  // //! ForEach: "Tên biến array".forEach("Hàm Không tên");
  // numbers.forEach((number) {
  //   print(number);
  //  });
//!
  //  stringNumbers.forEach((str) {
  //    print(str);
  //  });
  //  //how to init an object?
  //  var myCar = Car(name:"HungLd",yearOfProduction:2020);
  //   myCar.handleEvent = (){
  //    print('Handle in main');
  //  };
  //  myCar.doSomething();
  //  myCar.sayHello('Hungld');

  //List of cars ?
  List<Car> cars = <Car>[
    Car(name: 'Hungld', yearOfProduction: 2015),
    Car(name: 'HI', yearOfProduction: 2017),
    Car(name: 'Ha', yearOfProduction: 2016),
    Car(name: 'HU', yearOfProduction: 2019),
    Car(name: 'HM', yearOfProduction: 2018)
  ]; // a blank list
  // cars.forEach((car) {
  //   print(car);
  // });
  // //How to sort this list, by yearOfProduction?
  // cars.sort((car1,car2)=>car1.yearOfProduction - car2.yearOfProduction); // sort ascending
      // cars.sort((car1,car2)=>car2.yearOfProduction - car1.yearOfProduction); // sort descending
        // how sort by name
  // cars.sort((car1,car2)=> car1.name.compareTo(car2.name));
  //how to update an item in the list ?
  cars[1].yearOfProduction = 2015;
  //add more item
  cars.add(Car(name: "hiu hiu",yearOfProduction: 2020));
  cars.add(Car(name: "Leu leu",yearOfProduction: 2020));
  //how to filter? ex: get only cars in 2020
  // var filterCar= cars.where((car) => car.yearOfProduction == 2020 && car.name.contains("leu")).toList();
  //delete an item = using filter
 var filterDelete = cars.where((car) => car.name != 'hiu hiu');
 //how to get a list of names ? use "map"
 List<String> names = cars.map((car) => car.name).toList();
 names.forEach((name) { 
   print('name: ${name}');
 });
 // now we try with final and const(constant)
 // khi khai báo const thì k thể thêm phân tử vào mảng được. còn ngược lại với final thì được.
 // In "const" list, you cannot do that !
 // đối với final thì biến đó k được tham chiếu sang những thằng khác, còn bên trong vẫn thay đổi được
 // biến nào đã tham chiếu đến đấy thì sẽ k được tham chiếu đến nơi khác nữa. đấy là final.
 // final có thể update item.

 final List<int> someNumbers = [1,2,3,5];
 someNumbers[1]= 99; // you can update item's value in a list(final)
 someNumbers.add(7);

  List<int> someNumber2 = someNumbers;
  someNumber2.add(123);

  // you can define an object without creating a class => map type
  Map<String,dynamic> personA = Map(); // key String, value: String
  personA['name'] = 'Hungld';
  personA['age'] = 18;
  Map<double,double> point = Map();
  point[2.0] = 3.2;//x=2.0 , y = 3.2
  point[1.0] = 5.6; // you can add many key-value pairs as you like;

  runApp(
    Center(
      child: Text(
        // '${myCar.name} - ${myCar.yearOfProduction}',
        names.toString(),
        textDirection: TextDirection.ltr, // left-to-right
      ),
    ),
  ); // this is "one line" fuction
}
