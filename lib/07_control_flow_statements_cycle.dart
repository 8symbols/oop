void main() {
  var i = 0;
  print("while");
  while (i < 5) {
    print(i);
    ++i;
  }


  i = 0;
  print("do while");
  do {
    ++i;
    print(i);
  } while (i < 5);

  print("for");
  for (var i = 0; i < 5; ++i) {
    print(i);
  }

  print("for iterable");
  final Iterable<Object?> someIterable = [1, 2, 3];
  for (final i in someIterable) {
    print(i);
  }

  print("for with continue");
  for (var i = 0; i < 10; ++i) {
    if (i == 3) {
      continue;
    }
    print(i);
    if (i == 4) {
      break;
    }
  }

  // Можно ли в for заменить var на final?

  print("for with outer");
  outer:
  for (var i = 0; i < 10; ++i) {
    for (var j = 0; j < 10; ++j) {
      print("outer $i $j");
      if (j.isOdd) {
        //нечетный
        continue outer;
      }
    }
  }
}
