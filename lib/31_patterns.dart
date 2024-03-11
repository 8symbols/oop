import 'dart:math' as math;

// Паттерны - это синтаксическая категория в языке Dart,
// подобная операторам и выражениям.
// Паттерн представляет форму набора значений,
// которые он может сопоставлять с фактическими значениями.

// Паттерн может соответствовать значению, деструктурировать значение или и то,
// и другое вместе, в зависимости от контекста и формы паттерна.
void constantPattern(int number) {
  switch (number) {
    // Constant pattern matches if 1 == number.
    case 1:
      print('one');
  }
}

void subpatterns(Object obj) {
  const a = 'a';
  const b = 'b';

  switch (obj) {
    case [a, b]:
      print('$a, $b');
  }
}

void destructing() {
  var numList = [1, 2, 3];
  var [a, b, ...d, c] = numList;
  print(a + b + c);
}

void switchDestructing(final List<Object> list) {
  switch (list) {
    case ['a' || 'b', var c]:
      print(c);
  }
}

void nestedDestructing() {
  var (a, [b, c]) = ('str', [1, 2]);
}

void assignment() {
  var (a, b) = ('left', 'right');
  (b, a) = (a, b);
  print('$a $b');
}

void switchCompleteSample(Object obj) {
  const first = 1;
  const last = 2;

  switch (obj) {
    case 1:
      print('one');

    case int() && >= first && <= last:
      print('in range');

    case (var a, var b):
      print('a = $a, b = $b');

    default:
      print('something');
  }
}

sealed class Shape {}

class Square implements Shape {
  final double length;

  Square(this.length);
}

class Circle implements Shape {
  final double radius;

  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
      Square(length: var l) => l * l,
      Circle(radius: var r) => math.pi * r * r
    };

void guardClause(Shape shape) {
  switch (shape) {
    case Square(length: var s) || Circle(radius: var s) when s > 0:
      print('Non-empty symmetric shape');
    case Square():
      print('Empty square');
    case _:
      print('Something else');
  }
}

void forLoop(Map<Object, Object> map) {
  for (final entry in map.entries) {
    print('${entry.key} occurred ${entry.value} times');
  }

  for (final MapEntry(key: key, value: count) in map.entries) {
    print('$key occurred $count times');
  }

  for (final MapEntry(:key, value: count) in map.entries) {
    print('$key occurred $count times');
  }
}

class Foo {
  final String one;
  final int two;
  const Foo({required this.one, required this.two});
}

void destructuringInstances() {
  final Foo myFoo = Foo(one: 'one', two: 2);
  var Foo(:one, :two) = myFoo;
  print('one $one, two $two');
}

void jsonValidation() {
  var json = {
    'user': ['Lily', 13]
  };
  var {'user': [name, age]} = json;

  if (json is Map<String, Object?> &&
      json.length == 1 &&
      json.containsKey('user')) {
    var user = json['user'];
    if (user is List<Object> &&
        user.length == 2 &&
        user[0] is String &&
        user[1] is int) {
      var name = user[0] as String;
      var age = user[1] as int;
      print('User $name is $age years old.');
    }
  }

  //упрощение варианта выше
  if (json case {'user': [String name, int age]}) {
    print('User $name is $age years old.');
  }
}

void guardSample((int, int) pair) {
  switch (pair) {
    case (int a, int b):
      if (a > b) print('First element greater');
    // If false, prints nothing and exits the switch.
    case (int a, int b) when a > b:
      // If false, prints nothing but proceeds to next case.
      print('First element greater');
    case (int a, int b):
      print('First element not greater');
  }
}

void guardBaseSyntax() {
  /*
  // Switch statement:
  switch (something) {
    case somePattern when some || boolean || expression:
      //             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
      body;
  }

  // Switch expression:
  var value = switch (something) {
    somePattern when some || boolean || expression => body,
    //               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
  }

  // If-case statement:
  if (something case somePattern when some || boolean || expression) {
    //                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
    body;
  }
   */
}

// Виды паттернов: https://dart.dev/language/pattern-types

void main() {
  switchCompleteSample((1, 2));
}
