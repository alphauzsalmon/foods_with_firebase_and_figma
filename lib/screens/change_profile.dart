import 'package:flutter/material.dart';

class ChangeProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChangeProfilePageState();
}

class _ChangeProfilePageState extends State<ChangeProfilePage> {
  String tolov = "";
  @override
  Widget build(BuildContext context) {
    double boyi = MediaQuery.of(context).size.height;
    double eni = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff000000),),
        centerTitle: true,
        title: Text("My profile", style: TextStyle(color: Color(0xff000000),),),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Information",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),),
              ],
            ),
            Material(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: eni / (eni / 315.0),
                height: boyi / (boyi / 133.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffFFFFFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: eni / (eni / 60.0),
                      height: boyi / (boyi / 60.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xffFFFFFF),
                      ),
                    ),
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
                        Text("Trasaco hotel, behind navrongo campus",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payment Method",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),),
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
                    Divider(height: 1.0,),
                    RadioListTile<String>(
                      groupValue: tolov,
                      value: "naqd",
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
                              color: Color(0xff0038FF),
                            ),
                            child: Container(
                              // width: eni / (eni / 16.0),
                              //height: boyi / (boyi / 12.0),
                              child: ImageIcon(AssetImage("assets/images/naqd.png",),
                                color: Color(0xffFFFFFF),
                                size: 6.0,),
                            ),
                          ),
                          Text("Pay on delivery",
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
            Container(
              height: boyi / (boyi / 70.0),
              width: eni / (eni / 315.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Update",
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
}
