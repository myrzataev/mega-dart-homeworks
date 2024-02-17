import 'dart:io';

void main() {
  print("1. Подсчет суммы чисел в диапазоне");
  print("2. Определение високосного года");
  print("3. Нахождение наименьшего общего кратного");
  print("4. Подсчет суммы цифр числа");
  print("5. Проверка на палиндром");

  stdout.write("Выберите задачу (1-5): ");
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      stdout.write("Введите начало диапазона: ");
      int start = int.parse(stdin.readLineSync()!);
      stdout.write("Введите конец диапазона: ");
      int end = int.parse(stdin.readLineSync()!);
      print("Сумма чисел в диапазоне: ${calculateSumInRange(start, end)}");
      break;
    case 2:
      stdout.write("Введите год: ");
      int year = int.parse(stdin.readLineSync()!);
      print("Год ${isLeapYear(year) ? "високосный" : "не високосный"}");
      break;
    case 3:
      stdout.write("Введите первое число: ");
      int num1 = int.parse(stdin.readLineSync()!);
      stdout.write("Введите второе число: ");
      int num2 = int.parse(stdin.readLineSync()!);
      print("Наименьшее общее кратное: ${findLCM(num1, num2)}");
      break;
    case 4:
      stdout.write("Введите целое число: ");
      int num = int.parse(stdin.readLineSync()!);
      print("Сумма цифр числа: ${sumOfDigits(num)}");
      break;
    case 5:
      stdout.write("Введите слово или фразу: ");
      String input = stdin.readLineSync()!.toLowerCase();
      print("Это ${isPalindrome(input) ? "" : "не "}палиндром");
      break;
    default:
      print("Некорректный выбор.");
  }
}

int sumOfDigits(int a) {
  int sum = 0;
  for (int i = 1; i < a; i++) {
    sum += i;
  }
  return sum;
}

bool isPalindrome(String word) {
  bool check = true;
  int i = 0;
  int j = word.length - 1;

  while (i <= word.length - 1) {
    if (word[i] != word[j]) {
      check = false;
    }
    i++;
    j--;
  }
  return check;
}
int findLCM(int num1, int num2) {
  int max = num1 > num2 ? num1 : num2;
  int lcm = max;

  while (true) {
    if (lcm % num1 == 0 && lcm % num2 == 0) {
      return lcm;
    }
    lcm += max;
  }
}
bool isLeapYear(int year) {
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    return true;
  } else {
    return false;
  }
}
int calculateSumInRange(int start, int end){
  int sum = 0;
  for (int i = start; i<=end; i++){
    sum+=i;
  }
  return sum;
}