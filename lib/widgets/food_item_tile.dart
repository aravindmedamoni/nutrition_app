import 'package:flutter/material.dart';
import 'package:nutrition_app/screens/food_details_screen.dart';

class FoodItemTile extends StatelessWidget {
  final String image;
  final String foodName;
  final String price;
  FoodItemTile({@required this.foodName, @required this.price, @required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => FoodDetailsScreen(heroImageTag:image,foodName: foodName,foodPrice: price,)));
        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Hero(
                tag: image,
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  height: 75.0,
                  width: 75.0,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    foodName,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 30.0,
              ),
              IconButton(icon: Icon(Icons.add),
                  color: Colors.black,
                  onPressed: (){})
            ],

          ),
        ),
      ),
    );
  }
}