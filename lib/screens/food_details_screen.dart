import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrition_app/widgets/information_card.dart';

class FoodDetailsScreen extends StatefulWidget {
  final String heroImageTag;
  final String foodName;
  final String foodPrice;

  FoodDetailsScreen({this.heroImageTag, this.foodName, this.foodPrice});

  @override
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  int countValue = 2;
  String selectedCard = 'Weight';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7a9bee),
      appBar: AppBar(
        backgroundColor: Color(0xff7a9bee),
        elevation: 0.0,
        title: Text('details'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.more_vert,
                size: 30.0,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 8,
                  child: Container(
                    height: MediaQuery.of(context).size.height - 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35.0),
                          topRight: Radius.circular(35.0),
                        )),
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height / 24,
                left: MediaQuery.of(context).size.width / 4,
                right: MediaQuery.of(context).size.width / 4,
                child: Hero(
                  tag: widget.heroImageTag,
                  child: Container(
                    width: 170.0,
                    height: 170.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border(),
                      image: DecorationImage(
                          image: AssetImage(widget.heroImageTag),
                          fit: BoxFit.cover),
                    ),
                    //child: Hero(tag: widget.tag, child: Image.asset(widget.tag,width: 160.0,height: 160.0,),),
                  ),
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 3,
                  left: MediaQuery.of(context).size.width / 16,
                  child: Text(
                    '${widget.foodName}',
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2.5,
                  left: MediaQuery.of(context).size.width / 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        '${widget.foodPrice}',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/6,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 18,
                        child: Container(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/6,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff7a9bee),
                            borderRadius: BorderRadius.circular(18.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    countValue -= 1;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Text('$countValue',style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w700),),
                              SizedBox(
                                width: 16.0,
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    countValue += 1;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height/1.88,
                  child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    InformationCard(cardTitle: 'Weight', selectedCard: selectedCard, info: '300', unit: 'G',onPressed: (cardTitle){
                      setState(() {
                        selectedCard = cardTitle;
                      });
                    },),
                    InformationCard(cardTitle: 'Vitamins', selectedCard: selectedCard, info: '250', unit: 'Vit',onPressed: (cardTitle){
                      setState(() {
                        selectedCard = cardTitle;
                      });
                    },),
                    InformationCard(cardTitle: 'Calories', selectedCard: selectedCard, info: '200', unit: 'Aval',onPressed: (cardTitle){
                      setState(() {
                        selectedCard = cardTitle;
                      });
                    },),
                    InformationCard(cardTitle: 'Avail', selectedCard: selectedCard, info: 'Not', unit: 'Avl',onPressed: (cardTitle){
                      setState(() {
                        selectedCard = cardTitle;
                      });
                    },),
                  ],
                ),
              )),
              Positioned(
                top: MediaQuery.of(context).size.height/1.26,
                  bottom: 0.0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: MaterialButton(
                      color: Colors.black,
                child: Text('Order',style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.0),
                      topRight: Radius.circular(6.0),
                    )
                ),
                onPressed: (){},),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}


