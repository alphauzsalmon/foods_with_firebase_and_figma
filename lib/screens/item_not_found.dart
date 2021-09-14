import 'package:figma_firebase_exam/firebase/searchData.dart';
import 'package:flutter/material.dart';

class ItemNotFoundPage extends StatelessWidget {
  final String saerchedFood;
  var _controller = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  ItemNotFoundPage(this.saerchedFood);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff000000),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.width / 50.0),
            ),
            child: TextFormField(
              //controller: _controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
              textInputAction: TextInputAction.search,
              keyboardType: TextInputType.text,
              initialValue: saerchedFood,
              onFieldSubmitted: (text) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchData(text),),);
              },
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // SizedBox(height: MediaQuery.of(context).size.height / (896.0 / 50.0),),
          Center(
            child: Column(
              children: [
                Icon(Icons.search,
                  size: 100.0,),
                Text(
                  "Item not found",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  """Try searching the item with
a different keyword.""",
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
        ],
      ),
    );
  }
}
