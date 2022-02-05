import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'booksmodel.g.dart';

@JsonSerializable()
class BooksModel {
  @JsonKey(name: "id")
  int? id_book;
  String? image;
  String? judulbuku;
  String? pengarang;
  String? deskripsi;
  String? isibuku;
  String? genre;

  BooksModel({
    this.id_book,
    this.image,
    this.judulbuku,
    this.pengarang,
    this.deskripsi,
    this.isibuku,
    this.genre,
  });

  BooksModel copyWith({
    int? id_book,
    String? image,
    String? judulbuku,
    String? pengarang,
    String? deskripsi,
    String? isibuku,
    String? genre,
  }) {
    return BooksModel(
      id_book: id_book ?? this.id_book,
      image: image ?? this.image,
      judulbuku: judulbuku ?? this.judulbuku,
      pengarang: pengarang ?? this.pengarang,
      deskripsi: deskripsi ?? this.deskripsi,
      isibuku: isibuku ?? this.isibuku,
      genre: genre ?? this.genre,
    );
  }

  Map<String, dynamic> toJson() => _$BooksModelToJson(this);

  factory BooksModel.fromJson(Map<String, dynamic> json) =>
      _$BooksModelFromJson(json);

  @override
  String toString() {
    return 'BooksModel(id_book: $id_book, image: $image, judulbuku: $judulbuku, pengarang: $pengarang, deskripsi: $deskripsi, isibuku: $isibuku, genre: $genre)';
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
        other.genre == genre;
  }

  @override
  int get hashCode {
    return id_book.hashCode ^
        image.hashCode ^
        judulbuku.hashCode ^
        pengarang.hashCode ^
        deskripsi.hashCode ^
        isibuku.hashCode ^
        genre.hashCode;
  }

  Map<String, dynamic> toMap() {
    return {
      'id_book': id_book,
      'image': image,
      'judulbuku': judulbuku,
      'pengarang': pengarang,
      'deskripsi': deskripsi,
      'isibuku': isibuku,
      'genre': genre,
    };
  }

  factory BooksModel.fromMap(Map<String, dynamic> map) {
    return BooksModel(
      id_book: map['id_book']?.toInt(),
      image: map['image'],
      judulbuku: map['judulbuku'],
      pengarang: map['pengarang'],
      deskripsi: map['deskripsi'],
      isibuku: map['isibuku'],
      genre: map['genre'],
    );
  }
}
