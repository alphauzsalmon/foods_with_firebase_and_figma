import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:figma_firebase_exam/screens/drawer.dart';
import 'package:flutter/material.dart';

class GetData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDatas();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getDatas(),
        builder: (context, snapshot) {
          return snapshot.data == null ? Scaffold(body: Center(child: CircularProgressIndicator(color: Color(0xffFA4A0C),),),)
              : DrawerPage(snapshot);
        },);
  }

  getDatas() async {
   var fb = await _firestore.collection('ovqatlar').get();
   return fb.docs;
  }
}
