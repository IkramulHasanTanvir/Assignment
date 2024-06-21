import 'car.dart';

void main() {
  Car tanvir = Car(
    brand: 'Toyota',
    model: 'CHR',
    year: 2022,
    milesDriven: 1000,
  );

  tanvir.drive(100);
  print("Tanveer's car : ${tanvir.getBrand()} ${tanvir.getModel()},"
      '\nYear: ${tanvir.getYear()}, '
      '\nAge: ${tanvir.getAge()}'
      '\nMiles Driven: ${tanvir.getMilesDriven()}\n');

  Car hridoy = Car(
    brand: 'Honda',
    model: 'Civic',
    year: 2023,
    milesDriven: 3000,
  );

  hridoy.drive(200);
  print("Hridoy's car : ${hridoy.getBrand()} ${hridoy.getModel()}."
      '\nYear: ${hridoy.getYear()}.'
      '\nAge: ${hridoy.getAge()}.'
      '\nMiles Driven: ${hridoy.getMilesDriven()}.\n');

  Car rafat = Car(
    brand: 'Mazda',
    model: 'Mx-5',
    year: 2024,
    milesDriven: 5000,
  );

  rafat.drive(300);
  print("Rafat's car : ${rafat.getBrand()} ${rafat.getModel()},"
      '\nYear: ${rafat.getYear()}, '
      '\nAge: ${rafat.getAge()}'
      '\nMiles Driven: ${rafat.getMilesDriven()}\n');

  print('Total number of cars: ${Car.numberOfCars}');
}
