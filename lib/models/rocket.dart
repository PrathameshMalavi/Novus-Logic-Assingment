// lib/models/rocket.dart
class Rocket {
  final String name;
  final String country;
  final int enginesCount;
  final String flickrImage;
  final double heightMeters;
  final double diameterMeters;
  final double massKg;
  final double costPerLaunch;
  final double successRatePct;
  final String description;
  final String firstFlight;

  Rocket({
    required this.name,
    required this.country,
    required this.enginesCount,
    required this.flickrImage,
    required this.heightMeters,
    required this.diameterMeters,
    required this.massKg,
    required this.costPerLaunch,
    required this.successRatePct,
    required this.description,
    required this.firstFlight,
  });

  factory Rocket.fromJson(Map<String, dynamic> json) {
    return Rocket(
      name: json['name'],
      country: json['country'],
      enginesCount: json['engines']['number'],
      flickrImage: (json['flickr_images'] as List).isNotEmpty ? json['flickr_images'][0] : '',
      heightMeters: (json['height']['meters'] as num).toDouble(),
      diameterMeters: (json['diameter']['meters'] as num).toDouble(),
      massKg: (json['mass']['kg'] as num).toDouble(),
      costPerLaunch: (json['cost_per_launch'] as num).toDouble(),
      successRatePct: (json['success_rate_pct'] as num).toDouble(),
      description: json['description'],
      firstFlight: json['first_flight'],
    );
  }
}
