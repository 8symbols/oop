// В норме нельзя оверрайдить методы и сеттеры так, чтобы принимаемые значения
// имели более узкий тип, чем указано в родителе – иначе это сломает вызовы
// по родительскому контракту.
//
// Если вдруг вам все-таки нужно, чтобы подтип принимал более узкий тип, и вы
// можете это гарантировать самостоятельно, можно использовать covariant.
// covariant позволяет нарушить это правило и указать более узкий тип. Указать
// covariant можно как в родительском классе, так и в дочернем, для
// прозрачности лучше указывать в родительском.
//
// covariant добавляет статические проверки на то, чтобы в обращениях по
// дочернему интерфейсу передавался только узкий тип, но обращения по
// родительскому интерфейсу не проверяются и при передаче по нему широкого типа
// будет исключение в рантайме.
//
// covariant используется, например, в State
// ```dart
// void didUpdateWidget(covariant T oldWidget) { }
// ```
// и в InheritedWidget
// ```dart
// bool updateShouldNotify(covariant InheritedWidget oldWidget);
// ```

class BaseArg {}

class ChildArg extends BaseArg {}

class Base {
  // Для геттера валидно иметь более узкий тип, это не ломает обращения
  // по родительскому интерфейсу.
  BaseArg? get getterFoo => null;

  // Сеттер значения более узкого типа ломает обращения по родительскому
  // интерфейсу.
  set setterFoo(covariant BaseArg value) {}

  set setterBar(BaseArg value) {}

  // В полях covariant нужен, так как там есть сеттер. Финальные поля
  // не могут быть covariant, так как у них нет сеттера.
  covariant BaseArg? fieldFoo;

  BaseArg? fieldBar;

  // Параметр более узкого типа ломает обращения по родительскому
  // интерфейсу.
  void foo(covariant BaseArg arg) {}

  void bar(BaseArg arg) {}
}

class Child extends Base {
  @override
  ChildArg? get getterFoo => null;

  @override
  set setterFoo(ChildArg value) {}

  @override
  set setterBar(covariant ChildArg value) {}

  @override
  ChildArg? fieldFoo;

  @override
  covariant ChildArg? fieldBar;

  @override
  void foo(ChildArg arg) {}

  @override
  void bar(covariant ChildArg arg) {}
}

void main() {
  final Child child = Child();

  child.foo(ChildArg());
  // child.foo(BaseArg()); // Ошибка в compile time.

  final Base base = child;

  base.foo(ChildArg());
  base.foo(BaseArg()); // Ошибка в runtime.
}
