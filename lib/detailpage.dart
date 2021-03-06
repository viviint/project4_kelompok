import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:latihan_4/bottommenu/bottommenu%20copy/bottommenu.dart';
import 'package:latihan_4/controller/bookscontroller.dart';
import 'package:latihan_4/controller/ratingcontroller.dart';
import 'package:latihan_4/model/booksmodel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:latihan_4/model/ratingmodel.dart';
import 'package:latihan_4/readpage.dart';
import 'package:latihan_4/widget/genreselect.dart';

class Detail extends StatelessWidget {
  final bookCon = Get.find<BooksController>();
  final RatingModel ratingModel;
  int idBook;

  Detail({Key? key, required this.idBook, this.ratingModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var selectedData = bookCon.books.firstWhere((e) => e.id_book == idBook);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          centerTitle: true,
          title: Text(
            "${selectedData.judulbuku}",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onTap: () {
              Get.to(Bottommenu());
            },
          ),
        ),
        body: Column(children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: Image.network("${selectedData.image}"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: Text(
                "${selectedData.judulbuku}",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(children: [
              Text(
                "${selectedData.pengarang}",
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: RatingBar.builder(
              initialRating: ,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15, left: 25),
            child: Row(
              children: [
                Container(
                    height: 45,
                    width: 350,
                    child: Text("${selectedData.genre}")),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 10),
                      child: ButtonTheme(
                        minWidth: 170,
                        height: 70,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Colors.indigo.shade700)),
                          color: Colors.indigo.shade700,
                          textColor: Colors.white,
                          child: const Text("Play Audio",
                              style: TextStyle(fontSize: 15)),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: ButtonTheme(
                        minWidth: 170,
                        height: 70,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Colors.indigo)),
                          color: Colors.white,
                          textColor: Colors.indigo,
                          child:
                              Text("Read Book", style: TextStyle(fontSize: 15)),
                          onPressed: () {
                            Get.to(ReaD(detail: selectedData));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Summary',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    children: [
                      Text(selectedData.deskripsi!),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
