class Class1 {
  final int a;

  const Class1(this.a);

  int call(int b, String c) => a * b + c.length;
}

void main() {
  final c1 = Class1(10);
  print(c1(2, '1234567'));
}
