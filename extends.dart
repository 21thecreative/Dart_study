// inheritance Extends
// 가솔린차 seat, door, cc(마력) - 가솔린 엔진
// 전기차 seat, door power, capacity - 모터 엔진
// seat,door처럼 공유되는 부분(중복되는 부분)을 합쳐보자!
// 차(class로 지정) seat, door를 입히고,
// 가솔린차와 전기차의 seat, door를 제거하여,
// 이를 inheritance 시킨다. : extends 활용
// Class 안에 constructor가 없을 땐 아무 변수도 전달하지 않는 깡통 constructor가 있다고 간주

void main(){
  ElectricCar tesla = ElectricCar();
  GasolineCar sonata = GasolineCar();
  
  tesla.seat = 7;
  sonata.seat = 4;
  
  print(tesla.seat);
  print(tesla.door);
}

class Car {
  int seat = 2;
  int door = 2;
  String color = "white"; // 여기까지는 variable(변수) 설정값 지정
  int engineSize = 1000; // 차량에 method(기능)을 주기 위함
  
  int currentSpeed(int accel){
    return accel * engineSize;
 }
  
}

class ElectricCar extends Car{
  int power;
  int capacity;
}

class GasolineCar extends Car{
  int cc;
}


//console
//7
//2 (door는 car class 그대로 extends한거라서 가져옴)
