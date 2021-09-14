import 'package:figma_firebase_exam/screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsPage extends StatefulWidget {
  List? rasmlar;
  String? nomlar;
  int? narxlar;
  DetailsPage({this.rasmlar, this.nomlar, this.narxlar});
  @override
  State<StatefulWidget> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  PageController _pageController = PageController();
  double currentPage = 0;
  int selectedIndex = 0;
  List<String> YourListHere = ["Ovqat", "Taom", "Avqot", "Yegulik"];

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double boyi = MediaQuery.of(context).size.height;
    double eni = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Color(0xff000000),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: eni / (eni / 53.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: eni / (eni / 250.0),
              height: boyi / (boyi / 280.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: eni / (eni / 250.0),
                    height: boyi / (boyi / 250.0),
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          selectedIndex = page;
                        });
                      },
                      itemCount: widget.rasmlar!.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: eni / (eni / 241.21),
                          height: boyi / (boyi / 241.21),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(widget.rasmlar![index]),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                ],
              ),
            ),
            Container(
              // width: eni / (eni / 190.0),
              height: boyi / (boyi / 70.0),
              child: Column(
                children: [
                  Text(
                    "${widget.nomlar}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 28.0,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    "${widget.narxlar} so'm",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0,
                      color: Color(0xffFA4A0C),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: boyi / (boyi / 77.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: eni / (eni / 158.0),
                    ),
                    child: Text(
                      "Delivery info",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: boyi / (boyi / 108.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: eni / (eni / 153.0),
                    ),
                    child: Text(
                      "Return policy",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: boyi / (boyi / 70.0),
              width: eni / (eni / 315.0),
              margin: EdgeInsets.only(bottom: boyi / (boyi / 20.0),),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(rasmlar: widget.rasmlar![0], nomlar: widget.nomlar, narxlar: widget.narxlar,),),);
                },
                child: Text(
                  "Add to cart",
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

  Widget _indicator(bool isActive) {
    return Container(
      height: 10,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        height: isActive ? 10 : 8.0,
        width: isActive ? 12 : 8.0,
        decoration: BoxDecoration(
          boxShadow: [
            isActive
                ? BoxShadow(
                    //color: Color(0xffFA4A0C).withOpacity(0.72),
                    //blurRadius: 4.0,
                    //spreadRadius: 1.0,
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  )
                : BoxShadow(
                    color: Color(0xffC4C4C4),
                  )
          ],
          shape: BoxShape.circle,
          color: isActive ? Color(0xffFA4A0C) : Color(0xffC4C4C4),
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < YourListHere.length; i++) {
      list.add(i == selectedIndex ? _indicator(true) : _indicator(false));
    }
    return list;
  }
}
