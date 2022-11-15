import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcTlBlnHhSIcZmCsViaG0p0e3EtbG0RXoqfHBJK9rm-NrFz-aDAl6NTl8MDgM-rLDlqkxE0hL6YIuQi5P44ad00',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://res.cloudinary.com/yuppiechef/image/upload/v1464630796/blog/yuppiechef/non-stick_ytmbcy.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    notifyListeners();
  }
}
