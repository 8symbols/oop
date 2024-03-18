class CanInstantiateExtendImplementClass {}

//Ключевое слово mixin определяет mixin. Ключевое слово class определяет класс.
//Ключевое слово mixin class определяет класс,
// который можно использовать как обычный класс, так и mixin, с тем же именем и тем же типом.
mixin Mixin {}

mixin class CaInstantiateMixin {}

abstract class CanNotInstantiate {
  void canNotImplement();

  abstract int canNotImplementProperty;
}

// base запрещает имплементацию за пределами своей собственной библиотеки
base class CanNotBeImplementedOutsideOfLibrary {}

// Должен быть base/final/sealed для сохранения ограничения по всей
// иерархии наследования
final class BaseClassExtender extends CanNotBeImplementedOutsideOfLibrary {}

// Внутри library ограничение не действует.
final class BaseClassImplementer
    implements CanNotBeImplementedOutsideOfLibrary {}

// Классы библиотек, не входящие в библиотеку интерфейса,
// могут имплементировать интерфейс, но не расширять его
interface class CanNotBeExtendedOutsideOfLibrary {}

class InterfaceClassImplementer implements CanNotBeExtendedOutsideOfLibrary {}

class InterfaceClassExtender extends CanNotBeExtendedOutsideOfLibrary {}

// Таким образом можно сделать "традиционный" интерфейс
abstract interface class PureInterface {}

final class CanNotBeExtendedImplementedOutsideOfLibrary {}

final class FinalClassExtender
    extends CanNotBeExtendedImplementedOutsideOfLibrary {}

final class FinalClassImplementer
    implements CanNotBeExtendedImplementedOutsideOfLibrary {}

// Все доступные комбинации: https://dart.dev/language/modifier-reference
