import 'car.dart';

main() {
  Car tanvirIs = Car(
    brand: 'Toyota',
    model: 'CHR',
    year: 2016,
  );
  tanvirIs.drive(2000.0);

  Car hridoyIs = Car(
    brand: 'Mazda',
    model: 'MX-5',
    year: 2014,
  );
  hridoyIs.drive(900.0);

  Car rafatIs = Car(
    brand: 'Honda',
    model: 'Civic',
    year: 2017,
  );
  rafatIs.drive(500.0);

  print('Total number of cars created: ${Car.numberOfCars}');
}
