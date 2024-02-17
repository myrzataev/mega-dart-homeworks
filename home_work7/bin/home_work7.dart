
void findMaxElement(List<int> numbers) {
  if (numbers.isEmpty) {
    print("Массив пуст.");
    return;
  }

  int maxElement = numbers[0];
  int maxIndex = 0;

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > maxElement) {
      maxElement = numbers[i];
      maxIndex = i;
    }
  }

  print("Наибольший элемент: $maxElement, его индекс: $maxIndex");
}

bool areAllUnique(List<int> numbers) {
  List<int> a = [];
  for(int i in numbers){
    if(a.contains(i)){
      continue;
    }
    else{
      a.add(i);
    }
  }
  print(a);
  print(numbers);
  return numbers.length == a.length;

}

int countEvenNumbers(List<int> numbers) {
  int count = 0;
  for (int number in numbers) {
    if (number % 2 == 0) {
      count++;
    }
  }
  return count;
}

List<int> sorted(List<int> numbers) {
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] > numbers[j]) {
        int temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }
  }
  return numbers;
}

int findMaxEven(List<int> numbers) {
  int maxEven = -1;
  for (int number in numbers) {
    if (number % 2 == 0 && number > maxEven) {
      maxEven = number;
    }
  }
  return maxEven;
}

void main() {
  List<int> numbers = [5, 8, 2, 10, 3, 15, 6, 8];

  findMaxElement(numbers);

  print("Все элементы уникальны: ${areAllUnique(numbers)}");

  print("Количество четных чисел: ${countEvenNumbers(numbers)}");

  List<int> sortedNumbers = sorted(numbers);
  print("Отсортированный массив: $sortedNumbers");

  int maxEven = findMaxEven(numbers);
  if (maxEven != -1) {
    print("Наибольшее четное число: $maxEven");
  } else {
    print("В массиве нет четных чисел.");
  }
}
