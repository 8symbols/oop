// Класс с известным конечным количеством подтипов.
// Неявно абстрактный.
sealed class SealedClass {}

class SealedExtender1 extends SealedClass {}

class SealedImplementer1 implements SealedClass {}

class SealedExtender2 extends SealedClass {}

// ERROR: Cannot be instantiated
// SealedClass sealedClass = SealedClass();

SealedClass myCar = SealedExtender1();

void foo(SealedClass sealedClass) {
  // Покрыты не все подтипы.
  //
  // switch (sealedClass) {
  //   case SealedExtender1():
  //     print('SealedExtender1');
  //   case SealedImplementer1():
  //     print('SealedImplementer1');
  // }
}

void main() {}
