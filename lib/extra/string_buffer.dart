void main() {
  final buffer = StringBuffer('Изначальное содержимое ');
  for (var i = 0; i < 5; ++i) {
    buffer.write(i);
  }
  buffer.writeAll([5, 6, 7, 8], '-');
  print(buffer.toString());
}
