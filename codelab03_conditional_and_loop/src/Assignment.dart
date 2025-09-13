void main() {
  String name = "Sherly Lutfi Azkiah Sulistyawati";
  String nim = "2341720241";

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i is prime number --> $name ($nim)");
    }
  }
}

// check prime number
bool isPrima(int number) {
  if (number < 2) return false;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
