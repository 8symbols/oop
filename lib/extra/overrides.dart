class BaseArg {}

class ChildArg extends BaseArg {}

abstract class Base {
  BaseArg foo(ChildArg child);

  void bar(int a, [int b = 42]);

  void baz(
    int a, {
    required int b,
    int c = 42,
  });
}

abstract class Child extends Base {
  @override
  ChildArg foo(BaseArg child);

  @override
  void bar(int a, [int b = 43, int c = 0, int? d]) {}

  @override
  void baz(
    int a, {
    required int b,
    int c = 43,
    int? d,
    int e = 0,
    // required int f,
  });
}

abstract class A<T> {
  void m([T x]);
}

abstract class Aint implements A<int> {
  @override
  void m([int i = 42]);
}

abstract class AString implements A<String> {
  @override
  void m([String s = 'Hello!']);
}

abstract class AOther<T> implements A<T> {
  @override
  void m([T? x]);
}
