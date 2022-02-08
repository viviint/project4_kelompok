import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class RatingModel {
  int? id;
  double? rating;

  RatingModel({
    this.id,
    this.rating,
  });

  RatingModel copyWith({
    int? id,
    double? rating,
  }) {
    return RatingModel(
      id: id ?? this.id,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'rating': rating,
    };
  }

  factory RatingModel.fromMap(Map<String, dynamic> map) {
    return RatingModel(
      id: map['id']?.toInt(),
      rating: map['rating']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory RatingModel.fromJson(String source) =>
      RatingModel.fromMap(json.decode(source));

  @override
  String toString() => 'RatingModel(id: $id, rating: $rating)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RatingModel && other.id == id && other.rating == rating;
  }

  @override
  int get hashCode => id.hashCode ^ rating.hashCode;
}
