import 'dart:io';

void main() {
  print("Введите сумму дохода: ");
  double income = double.parse(stdin.readLineSync()!);

  double taxRate;
  if (income <= 10000) {
    taxRate = 0;
  } else if (income <= 50000) {
    taxRate = 0.1;
  } else {
    taxRate = 0.12;
  }

  double taxAmount = income * taxRate;
  print("Налог на доход: \$$taxAmount");

  print("Введите математическое выражение (например, 2 + 3): ");
  List<String> expression = stdin.readLineSync()!.split(' ');

  double operand1 = double.parse(expression[0]);
  String operators = expression[1];
  double operand2 = double.parse(expression[2]);

  double result;
  switch (operators) {
    case '+':
      result = operand1 + operand2;
      break;
    case '-':
      result = operand1 - operand2;
      break;
    case '*':
      result = operand1 * operand2;
      break;
    case '/':
      result = operand1 / operand2;
      break;
    default:
      print("Неверный оператор");
      return;
  }
  print("Результат: $result");

  print("Введите расширение файла: ");
  String fileExtension = stdin.readLineSync()!.toLowerCase();

  String fileType;
  switch (fileExtension) {
    case '.txt':
      fileType = "Текстовый файл";
      break;
    case '.jpg':
    case '.jpeg':
    case '.png':
      fileType = "Изображение";
      break;
    case '.pdf':
      fileType = "Документ";
      break;
    default:
      fileType = "Неизвестный тип файла";
      break;
  }
  print("Тип файла: $fileType");
}


