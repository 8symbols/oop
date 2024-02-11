class Class1<T> {
  final T a;

  const Class1(this.a);
}

abstract class Doable<T> {
  T doSomething();
}

class DoableImplementer implements Doable<int> {
  @override
  int doSomething() => 42;
}

class Class2<V, T extends Doable<V>> {
  final T a;

  const Class2(this.a);

  V doSomething() => a.doSomething();
}

T first<T>(List<T> ts) {
  T tmp = ts[0];
  return tmp;
}

class Nullable<T> {
  final T? value;

  const Nullable([this.value]);
}

void main() {
  List<String> names = ['Seth', 'Kathy', 'Lars'];

  final c2 = Class2(DoableImplementer());
  print(c2.doSomething());
}
