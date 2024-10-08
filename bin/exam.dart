import 'dart:io';
import 'Library/Book.dart';
void main(){
  //Q1
    int number = int.parse(stdin.readLineSync()!);
    int reverse = 0, digit = 0;

    for (;number != 0;) {
      digit = number % 10;
      reverse = reverse * 10 + digit;
      number ~/= 10;
    }

    print('Reversed: $reverse');

    print("============================");
  //Q2
  List <int> numbers =[7,2,10,35,41];

  int max =numbers[0] , min =numbers[0] , sec =numbers[0];
  for(int i =0 ; i < numbers.length ;++i){
    if(numbers[i]<min){
      sec= min ;
      min =numbers[i];
    }
  }
  print(sec);
  for(int i =0 ; i < numbers.length ;++i){
    if(numbers[i]>max){
      sec= max ;
      max =numbers[i];
    }
  }
  print(sec);
  //Q3
  //abstract function
  //I use it because when I inherit a class,
  // I force the class that inherits from me to use this function.
  //================
  //constructors
  //An essential thing in the class that I use to get a value from it,
  // even if I don’t do it, it is done automatically in the class
  //class library
    print("============================");
  Book b1 =Book("title1", "Author X", 2003);
  b1.get_Details();
  print("============================");
  Library l1 =Library();
  l1.addBook(Book("title2", "Author y", 2004));
  l1.showAllBooks();
  print("============================");
  l1.findBookByTitel("title2");
  print("============================");
  l1.showTotalBook();
  print("============================");
  Library l2 =Library();
  l2.addBook(Book("title3", "Author z", 2006));
  l2.showAllBooks();
  print("============================");
  l2.findBookByTitel("title3");
  print("============================");
  l2.showTotalBook();

}
