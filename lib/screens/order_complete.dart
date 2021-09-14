import 'package:flutter/material.dart';

class OrderCompletePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff000000),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "Order Complete",
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
                ImageIcon(AssetImage("assets/images/basket1.png"),
                  size: 100.0,),
                Text(
                  "Thank you for  Ordering",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  """ Your delivery will be in soon.""",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
