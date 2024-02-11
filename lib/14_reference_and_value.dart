void reassign(int number, List<int> ints) {
  number = 15324;
  ints = [5, 2, 1];
}

void mutate(int number, List<int> ints) {
  number += 1;
  ints.add(700);
}

class Class1 {
  final int a;

  final String b;

  final String? c;

  const Class1({
    required this.a,
    required this.b,
    this.c,
  });

  // Какой случай не учтен?
  Class1 copyWith({
    int? a,
    String? b,
    String? c,
  }) =>
      Class1(
        a: a ?? this.a,
        b: b ?? this.b,
        c: c ?? this.c,
      );
}

void main() {
  final a = [1, 2, 3];
  final b = a;
  b[1] = 100;
  print(a);

  final copy1 = a.toList();
  final copy2 = [...a];
  final copy3 = [for (final element in a) element];

  final number = 7;
  final ints = [1, 2, 3];
  reassign(number, ints);
  print(number);
  print(ints);

  mutate(number, ints);
  print(number);
  print(ints);

  var list = const [1, 2, 3];
  list = [2, 4, 5];
}
