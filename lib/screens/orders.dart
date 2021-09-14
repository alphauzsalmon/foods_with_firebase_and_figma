import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff000000),
        ),
        centerTitle: true,
        title: Text(
          "Orders",
          style: TextStyle(
            color: Color(0xff000000),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / (896.0 / 100.0),),
          Center(
            child: Column(
              children: [
                ImageIcon(AssetImage("assets/images/basket1.png"),
                  size: 100.0,),
                Text(
                  "No orders yet",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  """Hit the orange button down
                   below to Create an order""",
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
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / (896.0 /  220.0),),
            width: MediaQuery.of(context).size.width / (414.0 / 314.0),
            height: MediaQuery.of(context).size.height / (896.0 / 70.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Start ordering",
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
