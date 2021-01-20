class Car{
  int seats;
  String color;
  
  Car(int sts, String clr){
    this.seats = sts;
    this.color = clr;
  } 
  // [String clr] print가 null로 나옴
  // [String clr = 'black']으로 지정하면 기본값이 블랙으로 나옴
  // {String clr = 'black'}으로 지정하면 new Car(4, clr:'red')로 변환가능
  // Car({this.seats, this.color='black'}) 으로 변환가능
  
  printVars(){
    print('seat: $seats, color: $color');
  }
  
}

main() {
  Car newCar = new Car(4, 'red');
  newCar.printVars();// . : object
}
