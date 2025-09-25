(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main () {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var recordAwal = (10, 20);
  print("Record awal: $recordAwal");

  var recordHasil = tukar(recordAwal);
  print("Record setelah ditukar: $recordHasil");

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ("Sherly Lutfi Azkiah Sulistyawati", 2341720241);
  print(mahasiswa);

  // Akses field record
  print("Nama: ${mahasiswa.$1}");
  print("NIM : ${mahasiswa.$2}");

  var mahasiswa2 = ('Sherly Lutfi Azkiah Sulistyawati', a: 2341720241, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Sherly Lutfi Azkiah Sulistyawati'
  print(mahasiswa2.a); // Prints 2341720241
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}