import 'package:flutter/material.dart';

class ChechkoutPage extends StatefulWidget {
  int? narx;
  ChechkoutPage(this.narx);
  @override
  State<StatefulWidget> createState() => _ChechkoutPageState();
}

class _ChechkoutPageState extends State<ChechkoutPage> {
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
            //SizedBox(height: boyi / (boyi / 10.0),),
            Container(
              margin: EdgeInsets.only(
                right: eni / (eni / 125.0),
              ),
              child: Text(
                "Payment",
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
                Text(
                  "Payment method",
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
             child:  Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20.0),
                 color: Color(0xffFFFFFF),
               ),
               child: Column(
                 children: [
                   RadioListTile<String>(
                     groupValue: tolov,
                     value: "plastik",
                     onChanged: (tf) {
                       setState(() {
                         tolov = tf!;
                       });
                     },
                     activeColor: Color(0xffFA4A0C),
                     title: Row(
                       children: [
                         Container(
                           width: eni / (eni / 40.0),
                           height: boyi / (boyi / 40.0),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0),
                             color: Color(0xffF47B0A),
                           ),
                           child: Container(
                             // width: eni / (eni / 16.0),
                             //height: boyi / (boyi / 12.0),
                             child: ImageIcon(AssetImage("assets/images/plastik.png",),
                               color: Color(0xffFFFFFF),
                               size: 16.0,),
                           ),
                         ),
                         Text("Card",
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
                     groupValue: tolov,
                     value: "vebmoney",
                     onChanged: (tf) {
                       setState(() {
                         tolov = tf!;
                       });
                     },
                     activeColor: Color(0xffFA4A0C),
                     title: Row(
                       children: [
                         Container(
                           width: eni / (eni / 40.0),
                           height: boyi / (boyi / 40.0),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0),
                             color: Color(0xffEB4796),
                           ),
                           child: Container(
                             // width: eni / (eni / 16.0),
                             //height: boyi / (boyi / 12.0),
                             child: ImageIcon(AssetImage("assets/images/vebmoney.png",),
                               color: Color(0xffFFFFFF),
                               size: 16.0,),
                           ),
                         ),
                         Text("Mobile Money",
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
    return showDialog(context: context, builder: (context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: AlertDialog(
      title: Container(
        color: Color(0xffEDEDED),
        width: MediaQuery.of(context).size.width / (414.0 / 314.0),
        height: MediaQuery.of(context).size.height / (896.0 / 66.0),
        child: Text("Please note",style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          color: Color(0xff000000),
        ),),
      ),
          content: Column(
            children: [
              Text("Delivery to trasaco",style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),),
              Text("GHS 2 - GH 3",style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),),
              Divider(height: 1.0,),
              Text("Delivery to campus",style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),),
              Text("GHS 1",style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),),
            ],
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text("Cancel",style: TextStyle(
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
        ),);
    },);
  }
}
