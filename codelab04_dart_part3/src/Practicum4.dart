void main () {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1]; // null-aware spread operator
  print(list3.length);

  // Add NIM
  var nim = ['2','3','4','1','7','2','0','2','4','1'];
  var listNIM = [...nim]; // spread operator
  print(listNIM);

  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
  
  // promoActive = false;
  // var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav2);

  String login = 'Manager'; // try Manager condition
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);

  login = 'User'; // try other condition
  var nav3 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav3);

  login = 'Admin'; // try other condition
  var nav4 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav4);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}