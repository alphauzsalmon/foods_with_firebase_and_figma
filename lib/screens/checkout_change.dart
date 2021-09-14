import 'package:flutter/material.dart';
import 'checkout.dart';

class CheckoutChangePage extends StatefulWidget {
  int? narx;
  CheckoutChangePage(this.narx);
  @override
  State<StatefulWidget> createState() => _CheckoutChangePageState();
}

class _CheckoutChangePageState extends State<CheckoutChangePage> {
  String tolov = "";
  String dostavka = "";
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
          "Checkout",
          style: TextStyle(
            color: Color(0xff000000),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: eni / (eni / 42.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(
                right: eni / (eni / 125.0),
              ),
              child: Text(
                "Delivery",
                style: TextStyle(
                  fontSize: 34.0,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Personal details",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChechkoutPage(widget.narx),),);
                },
                  child: Text("change",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFA4A0C),
                    ),),),
              ],
            ),
            Material(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: eni / (eni / 315.0),
                height: boyi / (boyi / 197.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffFFFFFF),
                ),child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Thelma Sara bear",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      color: Color(0xff000000),
                    ),),
                  Text("Thelmasara@gmail.com",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),),
                  Divider(height: 1.0,),
                  Text("+998903216587",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),),
                  Divider(height: 1.0,),
                  Text("Trasaco hotel, behind navrongo campus",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),),
                ],
              ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery method",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
            Material(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffFFFFFF),
                ),
                child: Column(
                  children: [
                    RadioListTile<String>(
                      groupValue: dostavka,
                      value: "eshikkacha",
                      onChanged: (tf) {
                        setState(() {
                          dostavka = tf!;
                        });
                      },
                      activeColor: Color(0xffFA4A0C),
                      title: Row(
                        children: [
                          Text("Door delivery",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000),
                            ),),
                        ],
                      ),
                    ),
                    Divider(height: 1.0,),
                    RadioListTile<String>(
                      groupValue: dostavka,
                      value: "pickup",
                      onChanged: (tf) {
                        setState(() {
                          dostavka = tf!;
                        });
                      },
                      activeColor: Color(0xffFA4A0C),
                      title: Row(
                        children: [
                          Text("Pick up",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000),
                            ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),),
                Text("${widget.narx} so'm",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    color: Color(0xff000000),
                  ),),
              ],
            ),
            Container(
              width: eni / (414.0 / 314.0),
              height: boyi / (896.0 / 70.0),
              child: ElevatedButton(
                onPressed: () {
                  dialog();
                },
                child: Text(
                  "Proceed to payment",
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
      ),
    );
  }

  dialog() {
    return showDialog(
      barrierDismissible: false,
      context: context, builder: (context) {
      return Container(
        child: AlertDialog(
          titlePadding: EdgeInsets.only(bottom: 20.0),
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xffEDEDED),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / (896.0 / 66.0),
            child: Center(child: Text("Please note",style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000),
            ),
            textAlign: TextAlign.left,),),
          ),
          content: RichText(
            text: TextSpan(text: "",
            children: [
              TextSpan(text: "Delivery to trasaco\n",style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),),
              TextSpan(text: "GHS 2 - GH 3\n________________\n",style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),),
              TextSpan(text: "Delivery to campus\n",style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),),
              TextSpan(text: "GHS 1",style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),),
            ],
          ),),
          actions: [
            TextButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text("Cancel",style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
              color: Color(0xff000000),
            ),),),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Proceed",
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
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      );
    },);
  }
}
