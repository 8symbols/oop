void main() {
  //set - неупорядоченный набор уникальных объектов.
  final set1 = {1, 2, 3};
  final Set<int> set2 = {1, 2, 3};
  final set3 = <Object>{'1', 1, true};
  final set4 = Set<int>();

  print('set3 $set3');
  set3.add('string');
  print('added string $set3');

  set3.remove(1);
  print('removed 1 $set3');

  final set5 = set3.union(set2);
  print('union $set5');
}
