part of 'base.dart';

class Child4 extends Base {
  final int a;

  Child4(this.a, int publicField, int privateField)
      : super(publicField, privateField);

  @override
  void publicMethod() {
    super.publicMethod();
    print('Child4: publicMethod');
  }

  @override
  void _privateMethod() {
    print('Child4: _privateMethod');
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
