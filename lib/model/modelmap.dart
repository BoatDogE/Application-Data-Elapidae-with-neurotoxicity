import 'dart:ffi';
import 'dart:html';

import 'dart:ui';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maper {
  final int id;
  final String title;
  final String author;
  final String images;
  final double latitude;
  final double longitude;

  const Maper({
    required this.id,
    required this.author,
    required this.title,
    required this.images,
    required this.latitude,
    required this.longitude,
  });

  factory Maper.fromJson(Map<String, dynamic> json) => Maper(
      id: json['id'],
      author: json['author'],
      title: json['title'],
      images: json['urlImage'],
      latitude: json['latitude'],
      longitude: json['longitude']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'author': author,
        'urlImage': images,
        'latitude': latitude,
        'longitude': longitude,
      };
}

class GeoPoint {
  const GeoPoint(this.latitude, this.longitude);

  final double latitude;
  final double longitude;

  @override
  bool operator ==(dynamic o) =>
      o is GeoPoint && o.latitude == latitude && o.longitude == longitude;

  @override
  int get hashCode => hashValues(latitude, longitude);
}
