void function1() {
  print('hello');
}

int function2() {
  return 42;
}

int function3() => 42;

String function4(int positionalParam1, String positionalParam2) {
  return positionalParam2 * positionalParam1;
}

String function5(
  String positionalParam1, [
  int optionalParam1 = 3,
  String optionalParam2 = 'abc',
]) {
  return positionalParam1 + optionalParam2 * optionalParam1;
}

String function6(String positionalParam1, [int? optionalParam1]) {
  return optionalParam1 == null
      ? positionalParam1
      : positionalParam1 * optionalParam1;
}

String function7(
  String positionalParam1, {
  String? namedOptionalParam,
  required String namedRequiredParam,
  String namedParamWithDefaultValue = 'default',
}) {
  return [
    positionalParam1,
    namedOptionalParam,
    namedRequiredParam,
    namedParamWithDefaultValue,
  ].where((element) => element != null).join(', ');
}

void function8(String Function(int number) callback) {
  print('function8 start');
  print(callback(4));
  print('function8 end');
}

void function9(final int a) {
  // a += 1;
}

int Function(int) createAdder(int offset) {
  int adder(int number) {
    return number + offset;
  }

  return adder;
}

Never die() {
  throw Exception();
}

void main(List<String> arguments) {
  print(arguments);

  function1();
  print(function2());
  print(function3());
  print(function4(3, 'abc'));

  print(function5('start'));
  print(function5('start', 2));
  print(function5('start', 4, 'repeat'));

  print(function6('a'));
  print(function6('a', 3));

  print(function7(
    'positionalParam1',
    namedRequiredParam: 'namedRequiredParam',
  ));

  function8((number) => (number * 10).toString());

  final adder = createAdder(3);
  print(adder(4));

  final anonymousFunction = (int num) => num * 10;
  print(anonymousFunction(4));

  final callbacks = [for (var i = 0; i < 5; ++i) () => print(i)];
  for (final callback in callbacks) {
    callback();
  }
}
