int topLevelVariable = 5;


//  находится в верхней части класса или файла,
//  не должна быть частью какого-либо класса или метода.
int topLevelFunction() => 42;

void main() {
  print(topLevelVariable);
  print(topLevelFunction());
}
