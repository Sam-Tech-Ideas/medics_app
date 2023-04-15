class DoctorModel {
  final String name;
  final String title;
  final String image;
  final String distance;
  final String rating;

  DoctorModel({
    required this.name,
    required this.title,
    required this.image,
    required this.distance,
    required this.rating,
  });
}

List<DoctorModel> doctorList = [
  DoctorModel(
    name: 'Dr. Marcus Horiz',
    title: 'Chardiologist',
    image: 'assets/cedric.png',
    distance: '800m away',
    rating: '4.5',
  ),
  DoctorModel(
    name: 'Dr. Maria Elena',
    title: 'Psychologist',
    image: 'assets/maria.png',
    distance: '1.5km away',
    rating: '4.9',
  ),
  DoctorModel(
    name: 'Dr. Stevi Jane',
    title: 'Orthopedist',
    image: 'assets/stevi.png',
    distance: '2 km away',
    rating: '4.8',
  ),
];
