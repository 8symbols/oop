void function0() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
  print(record.$1);
  print(record.$2);
  print(record.a);
  print(record.b);
}

(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void function1() {
  (String, int) record;

  record = ('A string', 123);
}

void function2() {
  ({int a, bool b}) record;

  record = (a: 123, b: true);
}

void function3() {
  (int a, int b) recordAB = (1, 2);
  (int x, int y) recordXY = (3, 4);
  recordAB = recordXY;
}

void function4() {
  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);
  // recordAB = recordXY;
}

void function5() {
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);

  print(point == color);
}

void function6() {
  ({int x, int y, int z}) point = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color = (r: 1, g: 2, b: 3);

  print(point == color);
}

(String, int age, {int iq}) userInfo() {
  return ('name', 18, iq: -15);
}

void function7() {
  final (name, iq: iq, age) = userInfo();
  print(name);
  print(iq);
  print(age);
}

void main() {
  function7();
}
