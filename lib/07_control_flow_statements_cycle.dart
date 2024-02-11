void main() {
  var i = 0;
  while (i < 5) {
    print(i);
    ++i;
  }

  i = 0;
  do {
    ++i;
  } while (i < 5);

  for (var i = 0; i < 5; ++i) {
    print(i);
  }

  final Iterable<Object?> someIterable = [1, 2, 3];
  for (final i in someIterable) {
    print(i);
  }

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

  outer:
  for (var i = 0; i < 10; ++i) {
    for (var j = 0; j < 10; ++j) {
      if (j.isOdd) {
        continue outer;
      }
    }
  }
}
