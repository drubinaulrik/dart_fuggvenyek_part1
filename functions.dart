void main() {
  print("1. feladat");
  print(reverseInteger(725));

  print("2. feladat");
  print(sortNumbersDes(725));

  print("3. feladat");
  print(duplicates([1, 2, 4, 4, 3, 3, 1, 5, 3, "5"]));
  print(duplicates([0, 1, 2, 3, 4, 5]));

  print("4. feladat");
  print(grade(100, 88));

  print("5. feladat");
  print(gausSum(3));
}

int reverseInteger(int number) {
  String s = number.toString();
  String r = "";

  for (int i = s.length - 1; i >= 0; i--) {
    r = r + s[i];
  }

  return int.parse(r);
}

int sortNumbersDes(int number) {
  List<String> digits = number.toString().split('');

  for (int i = 0; i < digits.length; i++) {
    for (int j = i + 1; j < digits.length; j++) {
      if (digits[j].compareTo(digits[i]) > 0) {
        String temp = digits[i];
        digits[i] = digits[j];
        digits[j] = temp;
      }
    }
  }

  return int.parse(digits.join());
}

List duplicates(List arr) {
  List seen = [];
  List result = [];

  for (int i = 0; i < arr.length; i++) {
    if (seen.contains(arr[i]) && !result.contains(arr[i])) {
      result.add(arr[i]);
    } else {
      seen.add(arr[i]);
    }
  }

  return result;
}

String grade(int total, int points) {
  double percent = points / total * 100;

  if (percent >= 90) {
    return "A";
  } else if (percent >= 75) {
    return "B";
  } else if (percent >= 60) {
    return "C";
  } else if (percent >= 45) {
    return "D";
  } else {
    return "F";
  }
}

int gausSum(int number) {
  int sum = 0;

  for (int i = 0; i <= number; i++) {
    sum = sum + i;
  }

  return sum;
}
