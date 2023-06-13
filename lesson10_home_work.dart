import 'dart:io';

void main() {
  int binaryCount = binarySearch();
  print('Количество шагов: $binaryCount');
}

int binarySearch() {
  print('загадайте число от 1 до 100');
  int min = 1;
  int max = 100;
  int mid = (min + max) ~/ 2;
  int count = 0;

  String answer = '';

  while (answer != 'yes') {
    print('Ваше число $mid?');
    answer = stdin.readLineSync()!;
    count++;
    if (answer == '+') {
      min = mid;
      mid = (min + max) ~/ 2;
    } else if (answer == '-') {
      max = mid;
      mid = (min + max) ~/ 2;
    }
  }

  return count;
}
