import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/detailpage.dart';
import 'package:latihan_4/model/booksmodel.dart';

class TrendingNow extends StatelessWidget {
  const TrendingNow({
    Key? key,
    required this.infoo,
  }) : super(key: key);
  final BooksModel infoo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.all(40),
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(infoo.image!))),
          ),
          Text(
            infoo.judulbuku!,
            style: TextStyle(fontSize: 15, color: Colors.black),
          )
        ],
      ),
      onTap: () {
        Get.to(Detail(idBook: infoo.hashCode));
      },
    );
  }
}
