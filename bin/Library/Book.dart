class Book{
  String? title , author ;
  int ? year ;
  Book(this.title,this.author,this.year);
  void get_Details(){
    print("Title Book : $title");
    print("author Book : $author");
    print("Year :$year");
  }
}
class Library{
  List<Book> listOfBooks = [];
  static int totalBooks = 0;

  void addBook(Book b1) {
    listOfBooks.add(b1);
    totalBooks++;
  }

  void showAllBooks(){
    for(int i = 0 ; i<listOfBooks.length;i++){
      listOfBooks[i].get_Details();
    }
  }
  void showTotalBook(){
    print("total of books : $totalBooks");
  }
  void findBookByTitel(String titel){
    for(int i = 0 ; i<listOfBooks.length;i++){
     if(listOfBooks[i].title==titel){
       print("the book is found ");
     }else{
       print("the book not found ");
     }
    }
  }
  Future <void>  fetchBooksFromServer(){
    return Future.delayed(Duration(seconds: 2),()=>print("fetched"));
  }
 void printBooks() async{
   print ("fetching");
   await fetchBooksFromServer();
   listOfBooks.add(Book("title", "author", 2000));
  }

}