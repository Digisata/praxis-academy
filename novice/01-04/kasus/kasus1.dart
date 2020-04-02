main() {
  GenericClass<int> iObject = GenericClass<int>(20);
  GenericClass<String> iObject2 = GenericClass<String>('Dua puluh');

  int value = iObject.getObject();
  String value2 = iObject2.getObject();

  iObject.showType();
  print('The value is: $value');
  iObject2.showType();
  print('The value is: $value2');
}

class GenericClass<T> {
  T object;

  GenericClass(T object) {
    this.object = object;
  }

  T getObject() {
    return object;
  }

  void showType() {
    print('Type of T is ${T}');
  }
}
