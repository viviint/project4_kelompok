import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'booksmodel.g.dart';

List<BooksModel> booksmodelFromJson(String str) =>
    List<BooksModel>.from(json.decode(str).map((x) => BooksModel.fromJson(x)));

String booksmodelToJson(List<BooksModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class BooksModel {
  int id_book;
  String image;
  String judulbuku;
  String pengarang;
  String deskripsi;
  String isibuku;
  List<String> genre;
  double rating;

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

  Map<String, dynamic> toMap() {
    return {
      'id_book': id_book,
      'image': image,
      'judulbuku': judulbuku,
      'pengarang': pengarang,
      'deskripsi': deskripsi,
      'isibuku': isibuku,
      'genre': genre,
      'rating': rating,
    };
  }

  factory BooksModel.fromMap(Map<String, dynamic> map) {
    return BooksModel(
      id_book: map['id_book'] ?? '',
      image: map['image'] ?? '',
      judulbuku: map['judulbuku'] ?? '',
      pengarang: map['pengarang'] ?? '',
      deskripsi: map['deskripsi'] ?? '',
      isibuku: map['isibuku'] ?? '',
      genre: List<String>.from(map['genre']),
      rating: map['rating']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory BooksModel.fromJson(String source) =>
      BooksModel.fromMap(json.decode(source));

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

  static List<BooksModel> booksmodel = [
    BooksModel(
        id_book: 1,
        image: 'assets/tctir.png',
        judulbuku: 'The Classes That I Raised',
        pengarang: 'Geunseo',
        deskripsi:
            "He was a F-rank Hunter, To top it off, he was an useless F-rank loser of a Hyung, who dragged down his incredible Dongsaeng,while he carelessly lived out his messed up life, he ultimately ended up taking his younger brother's life, he regressed back in time with his title, Perfect Upbringer",
        isibuku: "He was a F-rank Hunter, To top it off, he was an useless F-rank loser of a Hyung, who dragged down his incredible Dongsaeng,while he carelessly lived out his messed up life, he ultimately ended up taking his younger brother's life, he regressed back in time with his title, Perfect Upbringer",
        rating: 4.1,
        genre: ['Action', 'Comedy', 'Fantasy']),
    BooksModel(
        id_book: 2,
        image: 'assets/tocf.jpg',
        judulbuku: "Trash Of The Count's Family",
        pengarang: 'Yoo Ryeo Han',
        deskripsi: '',
        isibuku: '',
        rating: 4.5,
        genre: ['Action', 'Drama', 'Shounen']),
    BooksModel(
        id_book: 3,
        image: 'assets/sssclass.jpg',
        judulbuku: 'SSS-Class Suicide Hunter',
        pengarang: 'Shin Noah',
        deskripsi: '',
        isibuku: '',
        rating: 4.5,
        genre: ['Action', 'Advanture', 'Comedy']),
    BooksModel(
        id_book: 4,
        image: 'assets/secondliferanker.png',
        judulbuku: 'Second Life Ranker',
        pengarang: 'Sadoyeon',
        isibuku: '',
        deskripsi: '',
        rating: 4.1,
        genre: ['Action', 'Mystery', 'Tragedy']),
  ];
}
