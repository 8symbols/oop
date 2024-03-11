void main() {
  int number = 2;
  bool flag = true;
  String s = 'text';

  // Object - базовый тип всего, кроме null
  print('Присваиваем в object другие типы');
  Object object = number;
  print(object);
  object = flag;
  print(object);
  object = s;
  print(object);

  // Если нужны методы потомка, придется кастовать
  print('Длина object после кастования к String');
  print((object as String).length);

  // Лучше сначала проверить
  if (object is String) {
    print('Длина object после проверки на String');
    print(object.length); // Можно уже не кастовать, тип запомнится
  }

  // dynamic - динамическая типизация. Можно присваивать все и вызвать
  // все без каких-либо проверок, в случае ошибок умрете в рантайме.
  print('Присваиваем в dynamic другие типы');
  dynamic evil = number;
  print(evil);
  evil = flag;
  print(evil);
  evil = s;
  print(evil);
  print('длина dynamic после присвоения строки');
  print(evil.length);

  // Какой из следующих вариантов приведет к исключению?

  // print(evil + 3);
  // print((object as num) + 3);

}
