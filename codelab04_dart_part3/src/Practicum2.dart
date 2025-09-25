void main () {
  var halogens = ['fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'];
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  // Tambahkan elemen ke Set
  names1.add("Sherly Lutfi Azkiah Sulistyawati");
  names1.add("2341720241");

  names2.addAll({"Sherly Lutfi Azkiah Sulistyawati", "2341720241"});

  print(names1);
  print(names2);
  print(names3);
}