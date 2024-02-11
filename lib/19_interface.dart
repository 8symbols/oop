class Base1 {
  void base1() {
    print('base1');
  }
}

class Base2 {
  void base2() {
    print('base1');
  }
}

class Child1 extends Base1 {}

class Child2 implements Base1 {
  @override
  void base1() {
    print('Child2: base1');
  }
}

// class Child3 extends Base1, Base2 {}

class Child4 extends Base1 implements Base2 {
  @override
  void base2() {
    print('Child4: base2');
  }
}

class Child5 implements Base1, Base2 {
  @override
  void base1() {
    print('Child5: base1');
  }

  @override
  void base2() {
    print('Child5: base2');
  }
}
