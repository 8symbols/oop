// все исключения Dart являются unchecked исключениями.
// Методы не объявляют, какие исключения они могут генерировать,
// и вы не обязаны перехватывать какие-либо исключения.

// finally выполняется всегда
// Разница между операторами on и catch состоит в том, что on обрабатывает исключение определенного типа,
// а catch обрабатывает все исключения.
// Если нужный блок on или блок catch не найден,
// то при возникновении исключения опять же выполняется блок finally,
// а затем программа аварийно завершает свое выполнение.


class MyException implements Exception {}

class MyError extends Error {}

void main() {
  try {
    // assert(2 == 2);
    print('do something');
    //throw UnsupportedError('aaa');
    throw Exception('aaa');
  } on UnsupportedError {
    print('UnsupportedError');
  } on Exception catch (e, s) {
    print(e);
    print(s);
  } catch (e) {
    // throw e;
    rethrow;
  } finally {
    print('finally');
  }
}
