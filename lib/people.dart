class People {
  String name;
  double height;
  double weight;
  late double bmi;

  People(this.name, this.height, this.weight) {
    this.bmi = weight / ((height / 100) * (height / 100));
  }
}