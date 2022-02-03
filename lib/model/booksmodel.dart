import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'booksmodel.g.dart';

@JsonSerializable()
class BooksModel {
  int? id_book;
  String? image;
  String? judulbuku;
  String? pengarang;
  String? deskripsi;
  String? isibuku;
  List<String> genre;
  double? rating;

  BooksModel({
    required this.id_book,
    required this.image,
    required this.judulbuku,
    required this.pengarang,
    required this.deskripsi,
    required this.isibuku,
    required this.genre,
    required this.rating,
  });

  BooksModel copyWith({
    int? id_book,
    String? image,
    String? judulbuku,
    String? pengarang,
    String? deskripsi,
    String? isibuku,
    List<String>? genre,
    double? rating,
  }) {
    return BooksModel(
      id_book: id_book ?? this.id_book,
      image: image ?? this.image,
      judulbuku: judulbuku ?? this.judulbuku,
      pengarang: pengarang ?? this.pengarang,
      deskripsi: deskripsi ?? this.deskripsi,
      isibuku: isibuku ?? this.isibuku,
      genre: genre ?? this.genre,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toJson() => _$BooksModelToJson(this);

  factory BooksModel.fromJson(Map<String, dynamic> json) =>
      _$BooksModelFromJson(json);

  @override
  String toString() {
    return 'BooksModel(id_book: $id_book,image: $image, judulbuku: $judulbuku, pengarang: $pengarang, deskripsi: $deskripsi, isibuku: $isibuku, genre: $genre, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BooksModel &&
        other.id_book == id_book &&
        other.image == image &&
        other.judulbuku == judulbuku &&
        other.pengarang == pengarang &&
        other.deskripsi == deskripsi &&
        other.isibuku == isibuku &&
        listEquals(other.genre, genre) &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        judulbuku.hashCode ^
        pengarang.hashCode ^
        deskripsi.hashCode ^
        isibuku.hashCode ^
        genre.hashCode ^
        id_book.hashCode ^
        rating.hashCode;
  }
}
