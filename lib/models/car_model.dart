class CarModel {
  final String name;
  final String brand;
  final String imageUrl;
  final String description;
  final int horsepower;
  final double topSpeed;
  final String engine;
  final double acceleration; // 0-100 km/h

  CarModel({
    required this.name,
    required this.brand,
    required this.imageUrl,
    required this.description,
     required this.horsepower,
    required this.topSpeed,
    required this.engine,
    required this.acceleration,
  });
}

final List<CarModel> allCars = [
  CarModel(
    name: '911 GT3 RS',
    brand: 'Porsche',
    imageUrl: 'https://s3.ecompletocarros.dev/images/lojas/285/veiculos/204613/veiculoInfoVeiculoImagesMobile/vehicle_image_1722907859_d41d8cd98f00b204e9800998ecf8427e.jpeg',
    description: 'Track-focused high-performance sports car.',
    horsepower: 518,
    topSpeed: 312.0,
    engine: '4.0L Flat-6',
    acceleration: 3.0,
  ),
  CarModel(
    name: '911 Turbo S',
    brand: 'Porsche',
    imageUrl: 'https://www.galleriatr.com/B2ELResim/AracResim2El/1044/ef119d36-18b4-4520-aa37-4817b5e1502d_Buyuk.jpg',
    description: 'Luxury and performance combined.',
    horsepower: 640,
    topSpeed: 330.0,
    engine: '3.8L Twin-Turbo Flat-6',
    acceleration: 2.6,
  ),
  CarModel(
    name: '488 GTB',
    brand: 'Ferrari',
    imageUrl: 'https://www.topgear.com/sites/default/files/cars-car/image/2015/12/li3020379_u6a0684488_1.jpg',
    description: 'Mid-engine sports car with a turbocharged V8.',
    horsepower: 660,
    topSpeed: 330.0,
    engine: '3.9L Twin-Turbo V8',
    acceleration: 3.0,
  ),
   CarModel(
    name: 'x5',
    brand: 'BMW',
    imageUrl: 'https://images.prismic.io/carwow/aApA-vIqRLdaBlBi_BMWX52025exteriorfrontthreequarterviewdriving.jpg?auto=format&cs=tinysrgb&fit=max&q=60',
    description: 'Luxury SUV with sporty handling.',
    horsepower: 335,
    topSpeed: 250.0,
    engine: '3.0L Inline-6 Turbo',
    acceleration: 5.3,
  ),
  

];

