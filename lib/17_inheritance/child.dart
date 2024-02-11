import 'base.dart';

class Child3 extends Base {
  // _Child5? c5;

  Child3(super.publicField, super.privateField);

  @override
  void publicMethod() {
    super.publicMethod();
    print('Child3: publicMethod');
  }

  @override
  int get publicField => 10;
}
