

String s1 = 'How are you';
String s2 = 'I\'m fine';
var s3 = '$s1 - $s2'; //string concatenation
int x = 10;
int y = x*2; 
//! x và y là int. máy yêu cầu String thì mới hiện thị được thì cần phải thêm biến đô là ở đầu thì mới hiện thị được vd: '$y'

// what about an array?
List<int> numbers = [1,4,6,2,3,9,11];
//how to "map" an array?
// hàm map(ánh xạ): [mảng các biến kiểu X] => [mảng các biến kiểu Y]
List<String> stringNumbers = numbers.map((number){
  return 'value = $number';

}).toList();