void main() {
  // map - коллекция элементов, где каждый элемент имеет ключ и значение.
  // Ключ и значение могут представлять различные типы
  final map1 = {1: 'one', 2: 'two', 3: 'three'};
  final Map<int, String> list2 = {1: 'one', 2: 'two', 3: 'three'};
  final map3 = <Object, Object>{1: 'one', 2: 'two', 3: 'three'};
  final map4 = {};

  final map5 = <int, String>{};
  map5[1] = 'one';
  map5[5] = 'five';
  map5[3] = 'three';
  print(map5);

  map5.remove(5);
  print(map5);

  print(map5.containsKey(3));
  print(map5[3]);

  // особенностью Мар является скорость доступа к объектам за О(1),
  // это здорово помогает, когда в куче объектов нужно найти нужный нам по ключу.

  // Задание: создать Map<int, String> и заполнить парами вида 0: "0", 1: "1"
  // и т. д. от 0 до 100.
  // Ниже ответ

}


























//  final map = <int, String>{};
//   for (int i = 0; i <= 100; i++) {
//     map[i] = "$i";
//   }
//   print(map);