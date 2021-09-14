import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:figma_firebase_exam/screens/item_not_found.dart';
import 'package:figma_firebase_exam/screens/search_page.dart';
import 'package:flutter/material.dart';

class SearchData extends StatefulWidget {
  String word;
  SearchData(this.word);
  @override
  State<StatefulWidget> createState() => _SearchDataState();
}

class _SearchDataState extends State<SearchData> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchData();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: searchData(),
        builder: (context, snapshot) {
            return snapshot.hasData ? SearchPage(widget.word, snapshot) : ItemNotFoundPage(widget.word);
        },);
  }

  searchData() async {
    var fb = await _firestore.collection('ovqatlar').get();
    return fb.docs;
  }
}
