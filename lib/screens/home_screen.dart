
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nutrition_app/widgets/food_item_tile.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    color: Colors.white,
                    iconSize: 35.0,
                    onPressed: () {
                      SystemNavigator.pop();
                    }),
                Container(
                  width: 130.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.tune),
                          color: Colors.white,
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(Icons.more_vert),
                          color: Colors.white,
                          onPressed: () {})
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: RichText(text: TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Healthy', style:TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white),
                ),
               TextSpan(
                 text: '   '
               ),
                TextSpan(text: 'FooD', style:TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0,
                    color: Colors.white),
                ),

              ]
            )),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.only(topLeft: Radius.circular(46.0))),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300,
                    child: ListView(
                      children: <Widget>[
                        FoodItemTile(image:'images/plate1.png', foodName:'Salmon Bowl',price:'\$24.000'),
                        FoodItemTile(image:'images/plate2.png',foodName:'Spring  Bowl',price:'\$26.000'),
                        FoodItemTile(image:'images/plate3.png',foodName:'Green Bowl',price:'\$20.000'),
                        FoodItemTile(image:'images/plate4.png',foodName:'Kichidi Bowl',price:'\$20.000'),
                        FoodItemTile(image:'images/plate5.png',foodName:'Berry Bowl',price:'\$20.000'),
                        FoodItemTile(image:'images/plate6.png',foodName:'Avocado Bowl',price:'\$20.000'),
                        //buildFoodItem(context,'images/plate1.png','Green Bowl','\$20.000'),

                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Icon(Icons.search),
                    ),
                    Container(
                      height: 40.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.shopping_basket),
                          SizedBox(
                            width: 4,
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: Text('2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0, color: Colors.deepOrange),)),
                        ],
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: Color(0xFF1C1428),
                      ),
                      child: Center(
                        child: Text('CheckOut',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                            fontSize: 14.0,
                            color: Colors.white,
                          ),),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


