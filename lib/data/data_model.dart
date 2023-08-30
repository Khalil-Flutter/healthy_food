class Product {
  String title;
  String images;
  int price;

  Product({
    required this.title,
    required this.images,
    required this.price,
  });
}

List<Product> products = [
  Product(
    title: "food 1",
    images: "assets/plate1.png",
    price: 20,
  ),
  Product(
    title: "food 2",
    images: "assets/plate2.png",
    price: 22,
  ),
  Product(
    title: "food 3",
    images: "assets/plate3.png",
    price: 24,
  ),
  Product(
    title: "food 4",
    images: "assets/plate4.png",
    price: 26,
  ),
  Product(
    title: "food 5",
    images: "assets/plate5.png",
    price: 28,
  ),
  Product(
    title: "food 6",
    images: "assets/plate6.png",
    price: 30,
  ),
];
