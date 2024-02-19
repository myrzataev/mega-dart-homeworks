import 'dart:io';

import 'package:dio/dio.dart';
import 'package:simplytranslate/simplytranslate.dart';

import 'cat_model.dart';

void main(List<String> args) async {
  Map<String, String> availableLanguages = {
    "english": "en",
    "french": "fr",
    "russian": "ru",
    "spanish": "es",
    "kyrgyz": "ky"
  };
  String choosedLanguage = "en";
  bool isRunning = true;
  List<String> favouriteFacts = [];
  while (isRunning) {
    print(
        "\n\nWelcome to random get cat facts, choose language: \nRussian-1,\nFrench-2,\nKyrgyz-3\nSpanish-4\nExit-5");

    String chooseLanguage = stdin.readLineSync()!;
    switch (chooseLanguage) {
      case "1":
        choosedLanguage = availableLanguages["russian"]!;

      case "2":
        choosedLanguage = availableLanguages["french"]!;

      case "3":
        choosedLanguage = availableLanguages["kyrgyz"]!;

      case "4":
        choosedLanguage = availableLanguages["spanish"]!;

      case "5":
        isRunning = false;

      default:
        print("\nChoose correct number");
    }
    final response = await getRandomCatFacts(choosedLanguage);
    print(response);
    print("\n\n\nAdd to favourites-1\nNext Faxt-2\nShow favouries list-3");

    String nextOperation = stdin.readLineSync()!;
    switch (nextOperation) {
      case "1":
        print("\n\nAdded to favourite list");
        favouriteFacts.add(response);
        nextOperation;
        continue;

      case "2":
        getRandomCatFacts(choosedLanguage);
        nextOperation;
        continue;

      case "3":
        print("\n\nYour Favourite List: $favouriteFacts");
        nextOperation;
        continue;
      default:
        print("\n\nChoose correct number");
        nextOperation;
    }
  }
}

final gt = SimplyTranslator(EngineType.google);

Future<String> getRandomCatFacts(String language) async {
  final Dio dio = Dio();
  final Response response = await dio.get("https://catfact.ninja/fact");
  final model = CatModel.fromJson(response.data);
  String translatedFact = await gt.trSimply(model.fact ?? "", "en", language);
  return translatedFact;
}
