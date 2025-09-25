void main () {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['nama'] = 'Sherly Lutfi Azkiah Sulistyawati';
  gifts['nim'] = '2341720241';

  var mhs2 = Map<int, String>();
  nobleGases[99] = 'Sherly Lutfi Azkiah Sulistyawati';
  nobleGases[100] = '2341720241';

  mhs1['nama'] = 'Sherly Lutfi Azkiah Sulistyawati';
  mhs1['nim'] = '2341720241';

  mhs2[1] = 'Sherly Lutfi Azkiah Sulistyawati';
  mhs2[2] = '2341720241';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
