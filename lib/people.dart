class Person {
  String name;
  double height;
  double weight;
  late double bmi;

  Person(this.name, this.height, this.weight) {
    this.bmi = weight / ((height / 100) * (height / 100));
  }
}