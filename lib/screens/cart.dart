import 'package:figma_firebase_exam/screens/checkout_change.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartPage extends StatefulWidget {
  String? rasmlar;
  String? nomlar;
  int? narxlar;
  CartPage({this.rasmlar, this.nomlar, this.narxlar});
  @override
  State<StatefulWidget> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int dona = 1;
  @override
  Widget build(BuildContext context) {
    double boyi = MediaQuery.of(context).size.height;
    double eni = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff000000),
        ),
        centerTitle: true,
        title: Text(
          "Cart",
          style: TextStyle(
            color: Color(0xff000000),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          ImageIcon(
            AssetImage("assets/images/swipe.png"),
            size: 200.0,
            color: Color(0xff000000),
          ),
          Container(
          width: double.infinity,
          height: boyi / (896 / 461.0),
          child: ListView.builder(itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(
                width: eni / (eni / 360.0),
                height: boyi / (boyi / 102.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffFFFFFF),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: boyi / (boyi / 12.0),),
                        Container(
                          width: eni / (eni / 116.0),
                          height: boyi / (boyi / 77.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(widget.rasmlar ?? "asd"),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: boyi / (boyi / 30.0),),
                        Padding(
                          padding: EdgeInsets.only(
                            left: eni / (eni / 13.0),
                          ),
                          child: Text(
                            "${widget.nomlar}",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(height: boyi / (boyi / 15.0),),
                        Padding(
                          padding: EdgeInsets.only(
                            right: eni / (eni / 57.0),
                          ),
                          child: Text(
                            "${widget.narxlar}",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFA4A0C),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: boyi / (boyi / 50.0),),
                        Container(
                          width: eni / (eni / 136.0),
                          height: boyi / (boyi / 40.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color(0xffFA4A0C),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    kamaytir(eni);
                                  });
                                },
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                              Text(
                                "$dona",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    kopaytir();
                                  });
                                },
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onPanUpdate: (d) {
                if (d.delta.dx > 0) {}
                else {}
              },
            );
    },
          itemCount: 1,
          ),
          ),
          //SizedBox(height: boyi / (896.0 / 30.0),),
          Container(
            width: eni / (414.0 / 314.0),
            height: boyi / (896.0 / 70.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutChangePage(widget.narxlar! * dona),),);
              },
              child: Text(
                "Complete order",
                style: TextStyle(
                  color: Color(0xffF6F6F9),
                  fontSize: 17.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xffFA4A0C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  kamaytir(eni) {
    if (dona > 1) {
      dona -= 1;
      print(eni.toString());
    }
  }
  kopaytir() {
    dona += 1;
  }
}
