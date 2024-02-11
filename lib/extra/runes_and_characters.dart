import 'package:characters/characters.dart';

void main() {
  String hi = 'Привет 🇩🇰';
  print(hi.length);
  print(hi.runes.length);
  print(hi.characters.length);

  print('');
  for (int i = 0; i < hi.length; ++i) {
    print(hi[i]);
  }

  print('');
  for (int rune in hi.runes) {
    print(rune);
  }

  print('');
  for (String character in hi.characters) {
    print(character);
  }
}
