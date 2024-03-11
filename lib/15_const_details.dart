class Class2 {
  final int a;

  const Class2(this.a);
}

void mutate(List<int> ints) {
  ints[1] = 234;
}

void main() {
  const c21 = Class2(2);
  const c22 = Class2(2);
  print(identical(c21, c22));

  final list = const [1, 2, 3];
  mutate(list);
  print(list);
}
