import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:figma_firebase_exam/screens/foods.dart';
import 'package:figma_firebase_exam/screens/galeb_g_page.dart';
import 'package:figma_firebase_exam/screens/my_offers.dart';
import 'package:figma_firebase_exam/screens/orders.dart';
import 'package:figma_firebase_exam/screens/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  AsyncSnapshot? datas;
  DrawerPage(this.datas);
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  int _selectedIndex = 0;
  final FirebaseAuth _authUser = FirebaseAuth.instance;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double boyi = MediaQuery.of(context).size.height;
    double eni = MediaQuery.of(context).size.width;
    return DrawerScaffold(
      appBar: AppBar(
        /*leading: IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage("assets/images/Vector.png"),
            color: Color(0xff000000),
          ),
        ),*/
        iconTheme: IconThemeData(
          color: Color(0xff000000),
        ),
        actions: [
          Stack(
            children: [
              Positioned(child: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage("assets/images/basket.png",),
                  color: Color(0xff000000),
                ),
              ),
              ),
              Positioned(child: ImageIcon(
                AssetImage("assets/images/dot.png"),
                color: Color(0xff000000),
                size: eni / (eni / 5.0),
              ),
                top: boyi / (boyi / 35.0),
                left: eni / (eni / 18.0),),
              Positioned(child: ImageIcon(
                AssetImage("assets/images/dot.png"),
                color: Color(0xff000000),
                size: eni / (eni / 5.0),
              ),
                top: boyi / (boyi / 35.0),
                left: eni / (eni / 28.0),),
            ],
          ),
        ],
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0.0,
      ),
      drawers: [
        SideDrawer(
          child: buildDrawer(context),
          percentage: 0.6,
          drawerWidth: MediaQuery.of(context).size.width - 130.0,
          direction: Direction.left,
          animation: true,
          color: Color(0xffFA4A0C),
        ),
      ],
    builder: (context, index) {
     return FoodsPage(widget.datas);
    },
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/timer.png"),
            ),
            label: "",
          ),
        ],
        selectedItemColor: Color(0xffFA4A0C),
        unselectedItemColor: Color(0xffADADAF),
        currentIndex: _selectedIndex,
        onTap: bos,
      ),
    );
  }

  void bos(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget buildDrawer(context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / (MediaQuery.of(context).size.height / 60.0),),
          ListTile(
            leading: Icon(
              Icons.account_circle_outlined,
              color: Color(0xffFFFFFF),
              size: 22.0,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),),);
            },
          ),
          Divider(height: 1.0, color: Color(0xffFFFFFF),),
          ListTile(
            leading: ImageIcon(
              AssetImage("assets/images/basket1.png"),
              size: 22.0,
              color: Color(0xffFFFFFF),
            ),
            title: Text(
              'orders',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => OrdersPage(),),);
            },
          ),
          Divider(height: 1.0, color: Color(0xffFFFFFF),),
          ListTile(
            leading: Icon(
              Icons.local_offer_outlined,
              color: Color(0xffFFFFFF),
              size: 22.0,
            ),
            title: Text(
              'offer and promo',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyOfferPage(),),);
            },
          ),
          Divider(height: 1.0, color: Color(0xffFFFFFF),),
          ListTile(
            leading: ImageIcon(
              AssetImage("assets/images/privacy.png"),
              size: 22.0,
              color: Color(0xffFFFFFF),
            ),
            title: Text(
              'Privacy and policy',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          Divider(height: 1.0, color: Color(0xffFFFFFF),),
          ListTile(
            leading: ImageIcon(
              AssetImage("assets/images/security.png"),
              size: 22.0,
              color: Color(0xffFFFFFF),
            ),
            title: Text(
              'Security',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          SizedBox(height: MediaQuery.of(context).size.height / (MediaQuery.of(context).size.height / 240.0),),
          ListTile(
            leading: Text(
              'Sign-out',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600),
            ),
            title: Icon(
              Icons.arrow_right_alt,
              color: Color(0xffFFFFFF),
              size: 22.0,
            ),
            onTap: () async {
              try {
                await _authUser.signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => GalebGPage(),),
                        (route) => false);
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Xatolik: $e'),
                  duration: const Duration(seconds: 1),
                ),);
              }
            },
          ),
        ],
      ),
    );
  }
}