void foo(bool flag1, bool flag2) {
  if (flag1) {
    print('flag1');
  }

  if (flag1) {
    print('flag1');
  } else {
    print('no flag1');
  }

  if (flag1) {
    print('flag1');
  } else if (flag2) {
    print('flag2');
  } else {
    print('no flag1 and no flag2');
  }

  if (flag1 && flag2) {
    print('flag1 and flag2');
  }

  if (flag1 || flag2) {
    print('flag1 or flag2');
  }

  if (!flag1) {
    print('not flag1');
  }
}

void main() {
  final flag1 = false;
  final flag2 = true;
  foo(flag1, flag2);

  final s = flag1 && flag2 ? 'yes' : 'no';
}
