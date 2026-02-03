import 'dart:math';
void main(){
  print("1. feladat: ");
  print(getRandomNumber());
  print("");

  print("2. feladat: ");
  print(getEvenOdd(7)); 
  print("");

  print("3. feladat: ");
  print(getDividers(12)); 
  print("");

  print("4. feladat: ");
  print(getVowels("programozás"));
  print("");

  print("5. feladat: ");
  print(getConsonants("Dart"));
  print("");

  print("6. feladat: ");
  print(getFirstChar("Hello"));
  print("");

  print("7. feladat: ");
  print(sumOfDigits(1234));
  print("");
}

int getRandomNumber(){
  final random = Random();
  return random.nextInt(99) + 1; 
}


String getEvenOdd(int n) {
  return n % 2 == 0 ? "even" : "odd";
}


List<int> getDividers(int n) {
  List<int> dividers = [];

  for (int i = 1; i <= n.abs(); i++) {
    if (n % i == 0) {
      dividers.add(i);
    }
  }

  return dividers;
}


List<String> getVowels(String text) {
  const vowels = ['a','e','i','o','u','á','é','í','ó','ö','ő','ú','ü','ű'];
  List<String> result = [];

  for (var char in text.toLowerCase().split('')) {
    if (vowels.contains(char)) {
      result.add(char);
    }
  }

  return result;
}


List<String> getConsonants(String text) {
  const vowels = ['a','e','i','o','u','á','é','í','ó','ö','ő','ú','ü','ű'];
  List<String> result = [];

  for (var char in text.toLowerCase().split('')) {
    if (RegExp(r'[a-záéíóöőúüű]').hasMatch(char) &&
        !vowels.contains(char)) {
      result.add(char);
    }
  }

  return result;
}

String getFirstChar(String text) {
  if (text.isEmpty) return "";
  return text[0];
}

int sumOfDigits(int n) {
  int sum = 0;

  for (var digit in n.abs().toString().split('')) {
    sum += int.parse(digit);
  }

  return sum;
}
