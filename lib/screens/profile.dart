import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'change_profile.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double boyi = MediaQuery.of(context).size.height;
    double eni = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff000000),),
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
              margin: EdgeInsets.only(right: eni / (eni / 125.0),),
              child: Text("My profile",
              style: TextStyle(
                fontSize: 34.0,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeProfilePage(),),);
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
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: eni / (eni / 91.0),
                      height: boyi / (boyi / 100.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellow,
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
                  ],
                ),
              ),
            ),
            Material(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: eni / (eni / 315.0),
                height: boyi / (boyi / 60.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffFFFFFF),
                ),
                child: ListTile(
                  leading: Text("Orders",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),),
                  trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff000000),),
                ),
              ),
            ),
            Material(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: eni / (eni / 315.0),
                height: boyi / (boyi / 60.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffFFFFFF),
                ),
                child: ListTile(
                  leading: Text("Pending reviews",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),),
                  trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff000000),),
                ),
              ),
            ),
            Material(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: eni / (eni / 315.0),
                height: boyi / (boyi / 60.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffFFFFFF),
                ),
                child: ListTile(
                  leading: Text("Faq",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),),
                  trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff000000),),
                ),
              ),
            ),
            Material(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: eni / (eni / 315.0),
                height: boyi / (boyi / 60.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffFFFFFF),
                ),
                child: ListTile(
                  leading: Text("Help",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),),
                  trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff000000),),
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
