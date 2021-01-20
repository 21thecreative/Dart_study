bool isEven(int x) {
  // An if-else statment.
  if (x % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

List<int> getEvenNumbers(Iterable<int> numbers) {
  var evenNumbers = <int>[];
  
  // A for-in loop.
  for (var i in numbers) {
    // A single-line if statment.
    if (isEven(i)) evenNumbers.add(i);
  }
  
  return evenNumbers;
}

main() {
  var numbers = List.generate(10,(i) => i);
  print(getEvenNumbers(numbers));
}
