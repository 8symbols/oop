import '00_hello_world.dart';

import 'extra/callable_object.dart' as co;

import '13_class.dart' hide Class1, Class2;

import '31_patterns.dart' show Shape;

// Импорты могут быть абсолютными или относительными.
import 'package:oop/extra/callable_object.dart';
import 'extra/callable_object.dart';

void main() {
  final c1 = co.Class1(10);
  var a = Shape;
  // var b = Square;
}
