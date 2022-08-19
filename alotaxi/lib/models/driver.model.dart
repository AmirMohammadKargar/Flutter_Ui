class DriverModel {
  final String name;
  final String exp;
  final String number;
  final String image;
  final int rate;
  final CarModel car;

  DriverModel({
    required this.name,
    required this.image,
    required this.exp,
    required this.number,
    required this.rate,
    required this.car,
  });
}

class CarModel {
  final String model;
  final String color;
  final String carNum;

  CarModel({required this.model, required this.color, required this.carNum});
}

var driver = DriverModel(
  image: 'assets/driver.jpeg',
  name: "Frank McGill",
  exp: "5",
  number: "+1 (234) 567-8900",
  rate: 3,
  car: CarModel(model: "Toyota Coralla", color: "Red", carNum: "608-BVK"),
);
