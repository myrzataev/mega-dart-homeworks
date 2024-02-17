import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  bool isRunning = true;
  do {
    print("Сгенерировать пароль - 1\nВыйти-2");
    String choose = stdin.readLineSync()!;

    switch (choose) {
      case "1":
        print("Желаемая длина пароля: ");
        int len = int.parse(stdin.readLineSync()!);

        print("Сгенерерированный пароль: ${randomPassword(len)}");
        break;
      case "2":
        print("До встречи");
        isRunning = false;
        break;
      default:
      print("1 либо 2");
    }
  } while (isRunning);
}

num randomPassword(int len) {
  String range = "9";
  for (int i = 0; i < len - 1; i++) {
    range = "${range}9";
  }
  print(range);
  String minimumRange = '1';
  for (int i = 0; i < len - 1; i++) {
    minimumRange = "${minimumRange}0";
  }
  print(minimumRange);

  num random = Random().nextInt(int.parse(range)) + int.parse(minimumRange);
  print(random
  );
  return random;
}
