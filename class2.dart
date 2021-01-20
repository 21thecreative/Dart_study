// class는 공장, Car는 생산물
// Variable(변수)를 통해 seat, door, color 등을 입히고 (Car가 어떠한 설정값을 가지고 있는지)
// Constructors는 form(주문서)를 통해 유저가 Car를 주문함. 결과값으로 나온 Car는 instance라고 부름.
// instance를 가지고 차량의 method를 사용하는 것임.

void main(){ // 주문서를 통해 주문한 사람한테 보내는 과정
  Car myNewCar = new Car(4, 4, "pink", 5000);
  
  print(myNewCar.color);
  print(myNewCar.seat);
  print(myNewCar.door);
  print(myNewCar.currentSpeed(50));
}
class Car {
  int seat = 2;
  int door = 2;
  String color = "white"; // 여기까지는 variable(변수) 설정값 지정
  int engineSize = 1000; // 차량에 method(기능)을 주기 위함
  
  Car(int fseat, int fdoor, String fcolor, int fengineSize){ // 주문서를 내린 것임(constructors)
    this.seat = fseat;
    this.door = fdoor;
    this.color = fcolor;
    this.engineSize = fengineSize;
  }
  
 int currentSpeed(int accel){
   return accel * engineSize;
 }
}
