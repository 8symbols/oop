int operator(int charCode) => charCode * 100;

int punctuation(int charCode) => charCode * 10;

int number() => 234234;

const slash = 0;
const star = 1;
const plus = 2;
const minus = 3;
const comma = 4;
const semicolon = 5;
const digit0 = 6;
const digit9 = 7;

void switchStatement(int charCode) {
  final int token;

  switch (charCode) {
    case slash || star || plus || minus:
      token = operator(charCode);
    case comma || semicolon:
      token = punctuation(charCode);
    case >= digit0 && <= digit9:
      token = number();
    default: // или case _
      throw FormatException('Invalid');
  }

  print(token);
}

void switchExpression(int charCode) {
  final token = switch (charCode) {
    slash || star || plus || minus => operator(charCode),
    comma || semicolon => punctuation(charCode),
    >= digit0 && <= digit9 => number(),
    _ => throw FormatException('Invalid')
  };

  print(token);
}

// Difference:
// - Cases do not start with the case keyword.
// - A case body is a single expression instead of a series of statements.
// - Each case must have a body; there is no implicit fallthrough for empty cases.
// - Case patterns are separated from their bodies using => instead of :.
// - Cases are separated by , (and an optional trailing , is allowed).
// - Default cases can only use _, instead of allowing both default and _.
