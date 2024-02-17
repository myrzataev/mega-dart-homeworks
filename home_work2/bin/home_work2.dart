import 'dart:io';

void main() {
  Map<String, double> exchangeRates = {
    'USD': 84.50,
    'EUR': 101.20,
    'RUB': 1.15,
    'CNY': 13.20,
    'GBP': 115.70,
    'JPY': 0.76,
  };

  print('Курсы обмена:');
  exchangeRates.forEach((currency, rate) {
    print('$currency -> KGS: Покупка - $rate, Продажа - ${1 / rate}');
  });

  stdout.write('Выберите действие (1 - Обменять сомы на валюту, 2 - Обменять валюту на сомы): ');
  int action = int.parse(stdin.readLineSync()!);

  if (action == 1) {
    buyForeignCurrency(exchangeRates);
  } else if (action == 2) {
    sellForeignCurrency(exchangeRates);
  } else {
    print('Некорректный выбор действия. Программа завершена.');
  }
}

void buyForeignCurrency(Map<String, double> exchangeRates) {
  stdout.write('Введите код валюты для покупки: ');
  String currencyCode = stdin.readLineSync()!.toUpperCase();

  if (exchangeRates.containsKey(currencyCode)) {
    stdout.write('Введите сумму в валюте для покупки: ');
    double foreignAmount = double.parse(stdin.readLineSync()!);

    double amountInKGS = foreignAmount * exchangeRates[currencyCode]!;
    print('Вы получите $amountInKGS сом');
  } else {
    print('Введен некорректный код валюты.');
  }
}

void sellForeignCurrency(Map<String, double> exchangeRates) {
  stdout.write('Введите код валюты для продажи: ');
  String currencyCode = stdin.readLineSync()!.toUpperCase();

  if (exchangeRates.containsKey(currencyCode)) {
    stdout.write('Введите сумму в сомах для продажи: ');
    double kgsAmount = double.parse(stdin.readLineSync()!);

    double amountInForeignCurrency = kgsAmount / exchangeRates[currencyCode]!;
    print('Вы получите $amountInForeignCurrency $currencyCode');
  } else {
    print('Введен некорректный код валюты.');
  }
}
