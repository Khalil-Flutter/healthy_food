import 'package:flutter/material.dart';
class FoodText extends StatelessWidget {
  const FoodText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 40.0,
      ),
      child: Row(
        children: <Widget>[
          Text(
            'Healthy',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            'Food',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontSize: 25.0,
            ),
          )
        ],
      ),
    );
  }
}

