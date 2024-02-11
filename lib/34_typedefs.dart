typedef IntList = List<int>;

typedef ListMapper<X> = Map<X, List<X>>;

typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;

void main() {
  IntList il = [1, 2, 3];

  Map<String, List<String>> m1 = {};
  ListMapper<String> m2 = {};

  assert(sort is Compare<int>);
}
