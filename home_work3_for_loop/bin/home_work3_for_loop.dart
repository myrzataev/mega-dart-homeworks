void main(List<String> args) {
  print(removeDuplicates());
  print(returnOnlyEvenNumbers());
  print(count("a", "darta"));
}

List<int> removeDuplicates() {
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> withoutDuplicates = [];
  for (int i in a) {
    if (b.contains(i)) {
      withoutDuplicates.add(i);
    } else {
      continue;
    }
  }
  return withoutDuplicates;
}

List<int> returnOnlyEvenNumbers() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> evenNumbers = [];
  for (int i in a) {
    if (i % 2 == 0) {
      evenNumbers.add(i);
    } else {
      continue;
    }
  }
  return evenNumbers;
}

int count(String a, String b) {
  int counter = 0;
  for (int i = 0; i < b.length; i++) {
    if (b[i] == a) {
      counter++;
    } else {
      continue;
    }
  }
  return counter;
}
