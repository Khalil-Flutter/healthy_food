import 'package:flutter/material.dart';
import '../../data/data_model.dart';

class FoodCart extends StatelessWidget {
  const FoodCart({
    super.key,
    required this.onPress,
    required this.product,
  });

  final Product product;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 10.0,
      ),
      child: InkWell(
        onTap:onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Hero(
                  tag: product.title,
                  child: Image(
                    image: AssetImage(product.images),
                    fit: BoxFit.cover,
                    height: 75.0,
                    width: 75.0,
                  ),
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      product.price.toString(),
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.add),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
