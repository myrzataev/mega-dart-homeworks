import 'dart:io';

void main(List<String> arguments) {
  while (true) {
    stdout.write(
        'Что хотите сделать?: \nКалькулятор-1 \nTаблицы умножения-2\nПроверки четности числа-3 \n Конвертации температуры из градусов-4 \nKонвертации валюты-5\nВыйти-6');
    String operation = stdin.readLineSync()!;
    switch (operation) {
      case "1":
        calculator();
        break;
      case "2":
        tablica();
        break;
      case "3":
        trueOrFalse();
        break;
      case "4":
        convertTemperature();
        break;
      case "5":
        currencyConverter();
        break;
      case "6":
        print('До свидания!');

        return;
      default:
        print('Некорректный выбор операции. Попробуйте снова.');
    }
  }
}

void calculator() {
  stdout.write('Введите первое число: ');
  double firstNumber = double.parse(stdin.readLineSync()!);
  stdout.write('Введите второе число: ');
  double secondNumber = double.parse(stdin.readLineSync()!);

  double sum = firstNumber + secondNumber;
  double difference = firstNumber - secondNumber;
  double product = firstNumber * secondNumber;
  double quotient = firstNumber / secondNumber;

  print('Сумма: $sum');
  print('Разность: $difference');
  print('Произведение: $product');
  print('Частное: $quotient');
}

void trueOrFalse() {
  stdout.write('Введите число: ');
  int number = int.parse(stdin.readLineSync()!);

  bool isEven = number % 2 == 0;

  print('Число четное: $isEven');
}

void convertTemperature() {
  stdout.write('Введите температуру в градусах Цельсия: ');
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (celsius * 9 / 5) + 32;

  print('Температура в градусах Фаренгейта: $fahrenheit');
}

void currencyConverter() {
  stdout.write('Введите сумму для конвертации: ');
  double amount = double.parse(stdin.readLineSync()!);

  stdout.write('Введите текущий курс валюты: ');
  double exchangeRate = double.parse(stdin.readLineSync()!);

  double convertedAmount = amount * exchangeRate;

  print('Сумма после конвертации: $convertedAmount');
}

void tablica() {
  stdout.write('Введите число: ');
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print('$number * $i = ${number * i}');
  }
}
