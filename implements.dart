// Inheritance Implements
// tesla 라는 회사는 좋은 설계도를 가지고 있다
// kesla 가 등장하여 이를 10조에 구매하기로 했다
// 설계도 안에 battery, frame, camera, AI 등을 가져와서
// 이를 kesla가 적절히 변경해서 사용하려고 할 때 필요한 개념

void main() {
  Tesla modelx = Tesla();
  print(modelx.makeBattery());
  print(modelx.setAI());
  
  Kesla modelk = Kesla();
  print(modelk.makeBattery());
  print(modelk.setAI());
}

class Tesla{
  String battery;
  String AI;
  
  String makeBattery(){
    return "tesla way of making battery";
  }
  
  String setAI(){
    return "tesla way of set AI";
  }
}

class Kesla implements Tesla{ //alt + enter
  @override
  String AI;

  @override
  String battery;

  @override
  String makeBattery() {
    return "Kesla way of making battery!!";
  }

  @override
  String setAI() {
    return "Kesla way of set AI!!";
  }
  
}
