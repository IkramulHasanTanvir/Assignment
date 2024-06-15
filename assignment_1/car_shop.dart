import 'car.dart';

main() {
  Car car = Car(
    brand: 'Toyota',
    model: 'CHR',
    year: 2016,
  );
  car.drive(2000.0);

  Car car1 = Car(
    brand: 'Mazda',
    model: 'MX-5',
    year: 2014,
  );
  car1.drive(900.0);

  Car car2 = Car(
    brand: 'Honda',
    model: 'Civic',
    year: 2017,
  );
  car2.drive(500.0);

  print('Total number of cars created: ${Car.numberOfCars}');
}
