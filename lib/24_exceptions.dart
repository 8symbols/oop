class MyException implements Exception {}

class MyError extends Error {}

void main() {
  try {
    // assert(2 == 2);
    print('do something');
    throw UnsupportedError('aaa');
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
