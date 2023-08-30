import 'package:flutter/material.dart';
import 'package:healthy_food/data/data_model.dart';
import 'package:healthy_food/details_page/details_screen.dart';
import 'package:healthy_food/home_page/components/app_bar.dart';
import 'package:healthy_food/home_page/components/food_cart.dart';
import 'package:healthy_food/home_page/components/food_text.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: const Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          const ApppBar(),
          const SizedBox(
            height: 25.0,
          ),
          const FoodText(),
          const SizedBox(
            height: 40.0,
          ),
          Container(
            height: height - 185,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75.0),
              ),
            ),
            child: ListView(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 20.0,
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 45,
                  ),
                  child: SizedBox(
                    height: height - 300,
                    child: ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return FoodCart(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  product: products[index],
                                ),
                              ),
                            );
                          },
                          product: products[index],
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.shopping_basket,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xFF1C1428),
                      ),
                      child: const Center(
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
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
