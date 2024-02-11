Iterable<int> range(int start, int end, [int step = 1]) sync* {
  for (var i = start; i < end; i += step) {
    yield i;
  }
}

Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    // for (final v in naturalsDownFrom(n - 1)) {
    //   yield v;
    // }
    yield* naturalsDownFrom(n - 1);
  }
}

void main() {
  for (final i in range(10, 100, 27)) {
    print(i);
  }

  final r = range(8, 800, 555);
  final iterator = r.iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }

  print(range(0, 10, 3));
  print(naturalsDownFrom(10));
}
