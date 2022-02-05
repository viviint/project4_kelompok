// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booksmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooksModel _$BooksModelFromJson(Map<String, dynamic> json) => BooksModel(
      id_book: json['id'] as int?,
      image: json['image'] as String?,
      judulbuku: json['judulbuku'] as String?,
      pengarang: json['pengarang'] as String?,
      deskripsi: json['deskripsi'] as String?,
      isibuku: json['isibuku'] as String?,
      genre: json['genre'] as String?,
    );

Map<String, dynamic> _$BooksModelToJson(BooksModel instance) =>
    <String, dynamic>{
      'id': instance.id_book,
      'image': instance.image,
      'judulbuku': instance.judulbuku,
      'pengarang': instance.pengarang,
      'deskripsi': instance.deskripsi,
      'isibuku': instance.isibuku,
      'genre': instance.genre,
    };
