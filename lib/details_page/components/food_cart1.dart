import 'package:flutter/material.dart';
import 'package:healthy_food/data/data1_model.dart';

class FoodCart1 extends StatefulWidget {
  const FoodCart1({super.key, required this.product1});

  final Product1 product1;

  @override
  State<FoodCart1> createState() => _FoodCart1State();
}

class _FoodCart1State extends State<FoodCart1> {
  var selectedCard = 'WEIGHT';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectCard(widget.product1.cardTitle);
      },
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 500,
        ),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: widget.product1.cardTitle == selectedCard
              ? const Color(0xFF7A9BEE)
              : Colors.white,
          border: Border.all(
              color: widget.product1.cardTitle == selectedCard
                  ? Colors.transparent
                  : Colors.grey.withOpacity(0.3),
              style: BorderStyle.solid,
              width: 0.75),
        ),
        height: 100.0,
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 15.0,
              ),
              child: Text(
                widget.product1.cardTitle,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  color: widget.product1.cardTitle == selectedCard
                      ? Colors.white
                      : Colors.grey.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                bottom: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.product1.info,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      color: widget.product1.cardTitle == selectedCard
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.product1.unit,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12.0,
                      color: widget.product1.cardTitle == selectedCard
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
