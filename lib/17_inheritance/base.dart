part 'part_of_child.dart';

class Base {
  final int publicField;

  int _privateField;

  Base(this.publicField, this._privateField);

  Base._privateConstructor()
      : publicField = 1,
        _privateField = 2;

  void publicMethod() {
    print('Base: publicMethod');
  }

  void _privateMethod() {
    print('Base: _privateMethod');
  }
}

class Child1 extends Base {
  final int a;

  Child1(this.a, super.publicField, super._privateField);
}

class Child2 extends Base {
  final int a;

  Child2(this.a, int publicField, int privateField)
      : super(publicField, privateField);

  @override
  void publicMethod() {
    super.publicMethod();
    print('Child2: publicMethod');
  }

  @override
  void _privateMethod() {
    print('Child2: _privateMethod');
  }

  @override
  int get publicField => 2;

  @override
  int get _privateField => 3;

  @override
  set _privateField(int value) {
    super._privateField = 10 * value;
  }
}

class _Child5 extends Base {
  _Child5(super.publicField, super.privateField);
}

void main() {
  Child4(1, 2, 3).publicMethod();
  Child2(1, 2, 3)._privateMethod();
}
