class Product {
  final int id, price;
  final String title, description, images;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.images});
}

//List of Products

List<Product> product = [
  Product(
    id: 1,
    price: 599,
    title: "Classic Leather Arm Chair",
    images: "assets/images/item1.jpg",
    description: "A chair is a pieces of furniture that is usually made out of wood or plastic. It can also be made out of fabric,metal,wood, and stone."
  ),

  Product(
      id: 2,
      price: 1199,
      title: "Classic Leather Arm Chair",
      images: "assets/images/item2.webp",
      description: "A chair is a pieces of furniture that is usually made out of wood or plastic. It can also be made out of fabric,metal,wood, and stone."
  ),

  Product(
      id: 3,
      price: 1599,
      title: "Classic Leather Arm Chair",
      images: "assets/images/item3.jpeg",
      description: "A chair is a pieces of furniture that is usually made out of wood or plastic. It can also be made out of fabric,metal,wood, and stone."
  ),
];