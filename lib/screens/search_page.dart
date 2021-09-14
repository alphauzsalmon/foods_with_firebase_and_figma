import 'package:figma_firebase_exam/screens/item_not_found.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'details.dart';

class SearchPage extends StatefulWidget {
  final String saerchedFood;
  var datas;
  SearchPage(this.saerchedFood, this.datas);
  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var _controller = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  var taraflar;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //print("Yanaa " + widget.datas.data.toString());
  }
  @override
  Widget build(BuildContext context) {
    double boyi = MediaQuery.of(context).size.height;
    double eni = MediaQuery.of(context).size.width;
    return listla().length == 0 ? ItemNotFoundPage(widget.saerchedFood) : Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff000000),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: eni / (eni / 50.0),
            ),
            child: TextFormField(
              //controller: _controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
              textInputAction: TextInputAction.search,
              keyboardType: TextInputType.text,
              initialValue: widget.saerchedFood,
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: boyi / (boyi / 37.0),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            SizedBox(
              height: boyi / (boyi / 20.0),
            ),
            Text(
              "Found ${listla().length} results",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 28.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: boyi / (boyi / 30.0),
              ),
              width: eni,
              height: boyi - 204.0,
              child: StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                //  crossAxisSpacing: 10,
                  //mainAxisSpacing: 12,
                itemBuilder: (context, index) {
                  return GestureDetector(child: Stack(children: [ Padding(
                    padding:
                   index.isOdd ? masofa() : masofa1(),
                    child:  Material(
                      elevation: index.isEven ? 3.0 : 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: index.isEven ? Color(0xffFFFFFF) : Colors.transparent,
                        ),
                      ),
                    ),),
                  index.isEven ?
                  Positioned(child: CircleAvatar(
                    backgroundImage: NetworkImage(listla()[(index / 2).toInt()]['rasmlar'][0]),
                  ),
                    width: eni / (eni / 150.0),
                    height: boyi / (boyi / 150.0),
                    //top: 100.0,
                    left: eni / (eni / 15.0),
                  ) : Text(""),
                    index.isEven ?
                    Positioned(child: Text(
                      "${listla()[(index / 2).toInt()]['nom']}",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                      width: eni / (eni / 150.0),
                      height: boyi / (boyi / 100.0),
                      top: boyi / (boyi / 160.0),
                      left: eni / (eni / 15.0),
                    ) : Text(""),
                    index.isEven ?
                    Positioned(
                      child: Text(
                        "${listla()[(index / 2).toInt()]['narx']} so'm",
                        style: TextStyle(
                          color: Color(0xffFA4A0C),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      width: eni / (eni / 100.0),
                      height: boyi / (boyi / 50.0),
                      top: boyi / (boyi / 240.0),
                      left: eni / (eni / 40.0),
                    ) :Text(""),
                  ],),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(rasmlar: listla()[(index / 2).toInt()]['rasmlar'], nomlar: listla()[(index / 2).toInt()]['nom'],narxlar: listla()[(index / 2).toInt()]['narx'],),),);
                    }, // index.isEven ni ishlatamiz
                  );
                },
                itemCount: listla().length * 2,
                scrollDirection: Axis.vertical,
                staggeredTileBuilder: (index) => StaggeredTile.count(2, index.isOdd ? 2 : 4,),
              ),
            ),
          ],
        ),
      ),
    );
  }
  masofa() {
    double boyi = MediaQuery.of(context).size.height;
    double eni = MediaQuery.of(context).size.width;
    var taraf = EdgeInsets.only(
      top: boyi / (boyi / 24.0),
      bottom: boyi / (boyi / 20.0),
      left: eni / (eni / 20.0),
      right: eni / (eni / 20.0),);
      taraflar = taraf;
      return taraflar;
  }
  masofa1() {
    double boyi = MediaQuery.of(context).size.height;
    double eni = MediaQuery.of(context).size.width;
    var taraf1 = EdgeInsets.only(
      top: boyi / (boyi / 48.0),
      bottom: boyi / (boyi / 20.0),
      left: eni / (eni / 20.0),
      right: eni / (eni / 20.0),);
      taraflar = taraf1;
      return taraflar;
  }
  mapla() {
    var g = ['chizburger', 'lavash',];
    List<Map<String, dynamic>> malumotlar = [];
    for (int i = 0; i < 2; ++i) {
      if (i == 0) {
        for (int j = 0; j < 2; j++) {
          malumotlar.add({
            'nom': widget.datas!.data[i][g[j]]['nom'],
            'narx': widget.datas!.data[i][g[j]]['narx'],
            'rasmlar': widget.datas!.data[i][g[j]]['rasmlar'],
            'turi': widget.datas!.data[i][g[j]]['turi'],
          });
        }
      }
      return malumotlar;
    }
  }

    mapla1() {
      var h = ['halim', 'manti', 'osh'];
      List<Map<String, dynamic>> malumotlar = [];
      for (int i = 0; i < 2; ++i) {
        if (i == 1) {
          for (int j = 0; j < 3; j++) {
            malumotlar.add({
              'nom': widget.datas!.data[i][h[j]]['nom'],
              'narx': widget.datas!.data[i][h[j]]['narx'],
              'rasmlar': widget.datas!.data[i][h[j]]['rasmlar'],
              'turi': widget.datas!.data[i][h[j]]['turi'],
            });
          }
        }
      }
      return malumotlar;
    }

  List<Map<String, dynamic>>  listla() {
    List<Map<String, dynamic>> malumotlar = [];
      for (var i in mapla()) {
        if (i['turi'] == widget.saerchedFood) {
          malumotlar.add(i);
        }
      }
      for (var i in mapla1()) {
        if (i['turi'] == widget.saerchedFood) {
          malumotlar.add(i);
        }
      }
      return malumotlar;
      }
}
