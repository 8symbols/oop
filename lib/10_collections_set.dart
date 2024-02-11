void main() {
  final set1 = {1, 2, 3};
  final Set<int> set2 = {1, 2, 3};
  final set3 = <Object>{'1', 1, true};
  final set4 = Set<int>();
  final map1 = {};

  print(set3);
  set3.add('string');
  print(set3);

  set3.remove(1);
  print(set3);
}
