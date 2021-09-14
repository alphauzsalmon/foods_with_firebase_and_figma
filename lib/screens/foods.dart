import 'package:figma_firebase_exam/firebase/searchData.dart';
import 'package:figma_firebase_exam/screens/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FoodsPage extends StatefulWidget {
  AsyncSnapshot? datas;
  FoodsPage(this.datas);
  @override
  State<StatefulWidget> createState() => FoodsPageState();
}

class FoodsPageState extends State<FoodsPage> with SingleTickerProviderStateMixin {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TabController? _tabController;
  List<Widget> tablar = [
    Padding(padding: EdgeInsets.only(bottom: 5.0),child: Tab(child: Text("Foods", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400),),),),
    Padding(padding: EdgeInsets.only(bottom: 5.0),child: Tab(child: Text("Drinks", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400),),),),
    Padding(padding: EdgeInsets.only(bottom: 5.0),child: Tab(child: Text("Snacks", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400),),),),
    Padding(padding: EdgeInsets.only(bottom: 5.0),child: Tab(child: Text("Sauce", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400),),),),
  ];
  var textController = TextEditingController();
  List<String> rasmlar = [];
  List<String> nomlar = [];
  List<int> narxlar = [];
  var a = {'a': 'b'};
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tablar.length, vsync: this);
    rasmOl();
    print(a['a']);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double boyi = MediaQuery.of(context).size.height;
    double eni = MediaQuery.of(context).size.width;
    return Stack(
        children: [
          Positioned(
            width: eni / (eni / 191.0),
            height: boyi / (boyi / 82.0),
            child: Text("Delicious food for you",
            style: TextStyle(
              fontSize: 34.0,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
            ),
            ),
          top: boyi / (132.0),
            left: eni / (eni / 50.0),
          ),
          Positioned(child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child:  TextFormField(
            controller: textController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: "Search",
              prefixIcon: Icon(Icons.search_rounded),
            ),
              validator: (text) {
              if (text!.isEmpty) {
                return "Bo'sh qoldirmang";
              }
              },
              onFieldSubmitted: (text) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchData(text),),);
              },
          ),),
          top: boyi / (boyi / 112.0),
            left: eni / (eni / 50.0),
            right: eni / (eni / 50.0),
          ),
          Positioned(
            child: Container(
            width: eni / (eni / 314.0),
    child: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: tablar,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color(0xffFA4A0C),
            labelColor: Color(0xffFA4A0C),
            unselectedLabelColor: Color(0xff9A9A9D),
          ),),
          top: boyi / (boyi / 184.0),
            left: eni / (eni / 71.0),
          ),
          Positioned(child: TextButton(
            onPressed: () {},
            child: Text(""
              "see more",
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
            color: Color(0xffFA4A0C),
          ),
          ),),
            top: boyi / (boyi / 230.0),
            left: eni / (eni / 260.0),
          ),
          Positioned(child: Container(
            width: eni - eni / (eni / 25.0),
            height: boyi / (boyi / 303.0),
            child: ListView.builder(itemBuilder: (context, index) {
              return InkWell(
                child: Stack(
                children: [
                  Positioned(child: Padding(padding: EdgeInsets.only(
                top: boyi / (boyi / 60.0),
                right: eni / (eni / 20.0),
                ),
              child: Material(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xffFFFFFF),
                      ),
                      width: eni / (414.0 / 200.0),
                      height: boyi / (896.0 / 243.0),
                      margin: EdgeInsets.only(top: boyi / (boyi / 60.0), right: eni / (eni / 20.0),),
                    ),
                  ),),
                  ),
                  Positioned(child: CircleAvatar(
                    backgroundImage: NetworkImage(rasmlar[index]),
                    //child: Image.network(),
                  ),
                  width: eni / (414.0 / 150.0),
                    height: boyi / (896.0 / 150.0),
                    //top: 100.0,
                    left: eni / (414.0 / 40.0),
                  ),
                  Positioned(child: Text(
                    "${nomlar[index]}",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                    width: eni / (eni / 150.0),
                    height: boyi / (boyi / 100.0),
                    top: boyi / (boyi / 160.0),
                    left: eni / (eni / 25.0),
                  ),
                  Positioned(
                    child: Text(
                      "${narxlar[index]} so'm",
                      style: TextStyle(
                        color: Color(0xffFA4A0C),
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: eni / (eni / 100.0),
                    height: boyi / (boyi / 50.0),
                    top: boyi / (boyi / 240.0),
                    left: eni / (eni / 55.0),
                  ),
                ],
              ),
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(rasmlar: mapla()[index]['rasmlar'], nomlar: mapla()[index]['nom'],narxlar: mapla()[index]['narx'],),),);
              },
              );
            },
            scrollDirection: Axis.horizontal,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: rasmlar.length,
            ),
          ),
          top: boyi / (boyi / 260.0),
            left: eni / (eni / 25.0),
          ),
        ],
      );
  }
  rasmOl() {
    var g = ['chizburger', 'lavash',];
    var h = ['halim', 'manti', 'osh'];

    for (int i = 0; i < 2; ++i) {
      if (i == 0) {
      for (int j = 0; j < 2; j++) {
          rasmlar.add(widget.datas!.data[i][g[j]]['rasmlar'][0]);
          nomlar.add(widget.datas!.data[i][g[j]]['nom']);
          narxlar.add(widget.datas!.data[i][g[j]]['narx']);
        } }else {
        for (int j = 0; j < 3; j++) {
          rasmlar.add(widget.datas!.data[i][h[j]]['rasmlar'][0]);
          nomlar.add(widget.datas!.data[i][h[j]]['nom']);
          narxlar.add(widget.datas!.data[i][h[j]]['narx']);
        }
      }
    }
  }
  mapla() {
    var g = ['chizburger', 'lavash',];
    var h = ['halim', 'manti', 'osh'];
    List<Map<String, dynamic>> malumotlar = [];
    for (int i = 0; i < 2; ++i) {
      if (i == 0) {
      for (int j = 0; j < 2; j++) {
        malumotlar.add({
          'nom': widget.datas!.data[i][g[j]]['nom'],
          'narx': widget.datas!.data[i][g[j]]['narx'],
          'rasmlar': widget.datas!.data[i][g[j]]['rasmlar'],
        });}}
      else {
        for (int j = 0; j < 3; j++) {
          malumotlar.add({
            'nom': widget.datas!.data[i][h[j]]['nom'],
            'narx': widget.datas!.data[i][h[j]]['narx'],
            'rasmlar': widget.datas!.data[i][h[j]]['rasmlar'],
          });}
      }
  }
    return malumotlar;
  }
}
