void main() {
  final list1 = [1, 2, 3];
  final List<int> list2 = [1, 2, 3];
  final list3 = <Object>['1', 1, true];
  final list4 = List.generate(3, (index) => index.toString());
  final list5 = [];

  final list6 = [
    'Car',
    'Boat',
    'Plane',
  ];

  print(list6.length);
  print(list6);
  list6[1] = 'aaaaa';
  print(list6);

  final list7 = [0, ...list1];
  print(list7);

  final list8 = ['a', if (2 + 2 == 4) 'b', 'c'];
  final list9 = ['a', if (2 + 2 == 5) 'b', 'c'];
  final list10 = ['a', if (2 + 2 == 5) 'b' else 'z', 'c'];

  print(list8);
  print(list9);
  print(list10);

  final list11 = ['a', for (var i = 0; i < 5; ++i) i.toString()];
  print(list11);

  // Как добавить несколько элементов по условию?

  final list12 = [];
  for (var i = 0; i < 3; ++i) {
    list12.add(i);
    print(list12);
  }

  while (list12.isNotEmpty) {
    list12.removeLast();
    print(list12);
  }

  final list13 = [5, 2, 3, 1];
  list13.sort();
  print(list13);

  final list14 = list13.where((element) => element.isEven).toList();
  print(list14);

  final list15 = list13.map((e) => e * 10).toList();
  print(list15);
}
