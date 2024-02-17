String checkDivisibility(int num1, int num2) {
  if (num1 % num2 == 0) {
    return "Делится нацело";
  } else {
    return "Не делится нацело";
  }
}

int countLetters(String str) {
  return str.length;
}

String checkType(dynamic value) {
  if (value is int) {
    return "Целое число";
  } else if (value is double) {
    return "Дробное число";
  } else if (value is String) {
    return "Строка";
  } else {
    return "Неизвестный тип";
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

String getSeason(int month) {
  switch (month) {
    case 1:
    case 2:
    case 12:
      return "Зима";
    case 3:
    case 4:
    case 5:
      return "Весна";
    case 6:
    case 7:
    case 8:
      return "Лето";
    case 9:
    case 10:
    case 11:
      return "Осень";
    default:
      return "Некорректный номер месяца";
  }
}

void main() {
  print(checkDivisibility(10, 5)); 
  print(countLetters("Hello")); 
  print(checkType(10)); 
  print(isPrime(7)); 
  print(getSeason(4));
}
