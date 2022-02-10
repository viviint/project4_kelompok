import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'ratingmodel.g.dart';

@JsonSerializable()
class RatingModel {
  int? id;
  String? rating;

  RatingModel({
    this.id,
    this.rating,
  });

  RatingModel copyWith({
    int? id,
    String? rating,
  }) {
    return RatingModel(
      id: id ?? this.id,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toJson() => _$RatingModelToJson(this);

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);

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
