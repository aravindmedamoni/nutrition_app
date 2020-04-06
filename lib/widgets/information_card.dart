
import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({
    Key key,
    @required this.cardTitle,
    @required this.selectedCard,
    @required this.info,
    @required this.unit,
    @required this.onPressed
  }) : super(key: key);

  final String cardTitle;
  final String selectedCard;
  final String info;
  final String unit;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        child: GestureDetector(
          onTap: (){
            onPressed(cardTitle);
          },
          child: Container(
            width: MediaQuery.of(context).size.width/3.4,
            height: MediaQuery.of(context).size.height/10,
            decoration: BoxDecoration(
              color: cardTitle == selectedCard ? Color(0xff7a9bee) : Colors.grey[200],
              border: Border.all(
                  color: cardTitle == selectedCard ? Colors.transparent : Colors.grey.withOpacity(0.8),
                  style: BorderStyle.solid,
                  width: 2.0
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(cardTitle??'',style: TextStyle(
                    color : cardTitle == selectedCard ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color : cardTitle == selectedCard ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: info),
                            TextSpan(text: unit),
                          ],
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}