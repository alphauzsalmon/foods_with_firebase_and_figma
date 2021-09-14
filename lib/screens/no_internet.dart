import 'package:figma_firebase_exam/main.dart';
import 'package:flutter/material.dart';

class NoInternetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         // SizedBox(height: MediaQuery.of(context).size.height / (896.0 / 50.0),),
          Center(
            child: Column(
              children: [
                Icon(Icons.wifi_off,
                  size: 100.0,),
                Text(
                  "No internet connection",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  """Your internet connection is currently
not available please check or try again.""",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: MediaQuery.of(context).size.height / (896.0 / 50.0),),
          Container(
            //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / (896.0 /  20.0),),
            width: MediaQuery.of(context).size.width / (414.0 / 314.0),
            height: MediaQuery.of(context).size.height / (896.0 / 70.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MyApp(),), (route) => false);
              },
              child: Text(
                "Try again",
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
}
