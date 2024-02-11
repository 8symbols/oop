mixin Mixin1 {
  void mixin1() {
    print('mixin1');
  }
}

mixin Mixin2 {
  void mixin2() {
    print('mixin2');
  }
}

class Base {
  void base() {
    print('base');
  }
}

class Child1 extends Base with Mixin1, Mixin2 {}

mixin Mixin3 on Base {
  void mixin3() {
    base();
    print('mixin3');
  }
}

mixin class Mixin4 {
  void mixin4() {
    print('mixin4');
  }
}

abstract mixin class Mixin5 {
  void base();

  void mixin5() {
    base();
    print('mixin5');
  }
}

class Child2 extends Base with Mixin5 {}

void main() {
  Child1().mixin1();
}
