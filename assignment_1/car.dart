class Car {
  late String brand;
  late String model;
  late int year;
  late double milesDrive;
  static int numberOfCars = 0; //properties

  Car({
    required String brand,
    required String model,
    required int year,
    double milesDrive = 0,
  }) {
    this.brand = brand;
    this.model = model;
    this.year = year;
    this.milesDrive = milesDrive;
    numberOfCars++;
  } //constructor

  void drive(double miles) {
    this.milesDrive = miles;
    _getBrand();
    _getModel();
    _getYear();
    _getAge();
    _getMilesDrive();
  } //method

  double _getMilesDrive() {
    print('Miles Driven : $milesDrive \n');
    return milesDrive;
  } //method

  String _getBrand() {
    print('Brand : $brand');
    return brand;
  } //method

  String _getModel() {
    print('Model : $model');
    return model;
  } //method

  int _getYear() {
    print('Year : $year');
    return year;
  } //method

  int _getAge() {
    int currentYear = 2024 - year;
    print('using age : $currentYear');
    return currentYear;
  } //method
} //class
