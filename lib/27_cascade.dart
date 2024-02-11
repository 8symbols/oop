class Class1 {
  final String name;

  const Class1(this.name);

  Class1 create(String name) => Class1(name);

  void method1() {
    print('method1');
  }

  void method2() {
    print('method2');
  }

  void method3() {
    print('method3');
  }
}

void main() {
  final stopwatch = Stopwatch()..start();

  final c1 = Class1('name1')..create('name2');
  print(c1.name);

  c1
    ..method1()
    ..method2()
    ..method3();

  // Как переписать с .. на .?
}
