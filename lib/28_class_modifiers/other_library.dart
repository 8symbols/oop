import 'sealed_class_library.dart';
import 'some_library.dart';

final class OtherLibraryBaseClassExtender
    extends CanNotBeImplementedOutsideOfLibrary {}

// final class OtherLibraryBaseClassImplementer
//     implements CanNotBeImplementedOutsideOfLibrary {}

class OtherLibraryInterfaceClassImplementer
    implements CanNotBeExtendedOutsideOfLibrary {}

// class OtherLibraryInterfaceClassExtender extends CanNotBeExtendedOutsideOfLibrary {}

// final class OtherLibraryFinalClassExtender
//     extends CanNotBeExtendedImplementedOutsideOfLibrary {}
//
// final class OtherLibraryFinalClassImplementer
//     implements CanNotBeExtendedImplementedOutsideOfLibrary {}

// class OtherLibrarySealedExtender1 extends SealedClass {}
//
// class OtherLibrarySealedImplementer1 implements SealedClass {}

class OtherLibrarySealedExtenderExtender extends SealedExtender1 {}
