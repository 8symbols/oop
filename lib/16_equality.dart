class Class1 {
  final int value;

  Class1(this.value);

  @override
  bool operator ==(Object other) =>
      other.runtimeType == runtimeType &&
      other is Class1 &&
      other.value == value;

  @override
  int get hashCode => value.hashCode;
}

void main() {
  final c1 = Class1(2);
  final list = [Class1(1), Class1(2), Class1(3)];

  print(list.contains(c1));

  final set = {Class1(2)};
  print(set.contains(c1));

  final c2 = Class1(2);
  final c3 = Class1(2);
  print(c2 == c3);
  print(identical(c2, c3));
}
