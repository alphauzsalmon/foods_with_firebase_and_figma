import 'package:figma_firebase_exam/firebase/fire_init.dart';
import 'package:flutter/material.dart';

class GalebGPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double boyi = MediaQuery.of(context).size.height; // 896
    double eni = MediaQuery.of(context).size.width; // 414
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xffFA4A0C),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: boyi / 12.2739726,
                  width: eni / 5.67123288,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/bella_olonje_logo.png"),
                    backgroundColor: Colors.white,
                  ),
                ),
                top: boyi / 16,
                left: eni / 8.44897959,
              ),
              Positioned(
                height: boyi / 6.49275362,
                width: eni / 1.28571429,
                child: Text(
                  "GALEB G Restaurant",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 55,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                top: boyi / 5.46341463,
                left: eni / 9.62790698,
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/ToyFaces_Tansparent_BG_29.png",
                  scale: 0.1,
                  height: boyi / 2.91083272,
                  width: eni / 1.83673469,
                ),
                top: boyi / 2.35,
                left: eni / 2.08,
              ),
              /*Positioned(
                height: boyi / 5.24099204,
                width:  eni / 1.51943333,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xffFF750B),
                        Color(0xffFF470B),
                      ],
                    ),
                  ),
                ),
              top: boyi / 1.3592233,
              left: eni / 2.15490319,
              ),*/
              Positioned(
                child: Image.asset(
                  "assets/images/ToyFaces_Tansparent_BG_49.png",
                  scale: 0.1,
                  height: boyi / 2.06280505,
                  width: eni / 1.15610165,
                ),
                top: boyi / 3.0,
                left: -(eni / 10.0),
              ),
              Positioned(
                height: boyi / 12.8,
                width: eni / 1.31847134,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FireInitPage(),),);
                  },
                  child: Text(
                    "Get starteed",
                    style: TextStyle(
                      color: Color(0xffFF460A),
                      fontSize: 17.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                top: boyi / 1.2,
                left: eni / 8.11764706,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
