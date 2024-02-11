class CanInstantiateExtendImplementClass {}

mixin Mixin {}

mixin class CaInstantiateMixin {}

abstract class CanNotInstantiate {
  void canNotImplement();

  abstract int canNotImplementProperty;
}

base class CanNotBeImplementedOutsideOfLibrary {}

// Должен быть base/final/sealed для сохранения ограничения по всей
// иерархии наследования
final class BaseClassExtender extends CanNotBeImplementedOutsideOfLibrary {}

// Внутри library ограничение не действует.
final class BaseClassImplementer
    implements CanNotBeImplementedOutsideOfLibrary {}

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
