import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("1. Квадраты чисел от 10 до 20:");

  print(kvadraty());
  print("\n2. Вычисление суммы чисел от 1 до n.");
  int n = int.parse(stdin.readLineSync()!);
  print("Сумма чисел от 1 до $n: ${sumOfN(n)}");

  print("\n3. Вычисление суммы вклада через N лет.");
  print("Введите сумму вклада S (рублей): ");
  int s = int.parse(stdin.readLineSync()!);
  print("Введите количество лет N:");
  int years = int.parse(stdin.readLineSync()!);
  print(calcPercent(s, years));
  print("\n4. Числа от 20 до 50, делящиеся на 3, но не делящиеся на 5:");
  print(numberDivisible());
  print("\n7. Сумма чисел от 1 до 50, делящихся на 5 или на 7:");
  print(sumFromOneToFifty());
  print("\n8. Двузначные числа, делящиеся на 4, но не делящиеся на 6:");
  print(sumDivisibleFourNotSix());
  print("\n9. Сумма чисел от 100 до 200, кратных 17:");
  print(divisibleForSeventeen());
  print("\n10. Сумма квадратов чисел от 1 до N.");
  print("Введите число N: ");
  int number = int.parse(stdin.readLineSync()!);
  print(sumOfSquares(number));
}

List<num> kvadraty() {
  List<num> power = [];
  for (int i = 10; i <= 20; i++) {
    num a = pow(i, 2);
    power.add(a);
  }
  return power;
}

int sumOfN(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

double calcPercent(int s, int years) {
  double a = s * 0.03 * years;
  double deposit = s + a;
  return deposit;
}

List<int> numberDivisible() {
  List<int> numbers = [];
  for (int i = 20; i <= 50; i++) {
    if (i % 3 == 0 && i % 5 != 0) {
      numbers.add(i);
    }
  }
  return numbers;
}

int sumFromOneToFifty() {
  int sum = 0;
  for (int i = 1; i <= 50; i++) {
    if (i % 5 == 0 && i % 7 == 0) {
      sum += i;
    }
  }
  return sum;
}

int sumDivisibleFourNotSix() {
  int sum = 0;
  for (int i = 10; i < 100; i++) {
    if (i % 4 == 0 && i % 6 != 0) {
      sum += i;
    }
  }
  return sum;
}

int divisibleForSeventeen() {
  int sum = 0;
  for (int i = 100; i <= 200; i++) {
    if (i % 17 == 0) {
      sum += i;
    }
  }
  return sum;
}

num sumOfSquares(int n) {
  num sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += pow(i, 2);
  }
  return sum;
}
