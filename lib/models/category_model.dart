import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  Category(this.name, this.imageUrl);

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

  static Category fromSnapshot(DocumentSnapshot snap) {
    Category category =
        Category(name: snap['name'], imageUrl: snap['imageUrl']);

    return category;
  }

  static List<Category> categories = [
    Category('Laptops',
        'https://media.cnn.com/api/v1/images/stellar/prod/221110144914-best-laptops-2022-lead-image-cnnu.jpg?c=original'),
    Category('Mobiles',
        'https://static.toiimg.com/thumb/resizemode-4,width-1200,height-900,msid-95944042/95944042.jpg'),
    Category('Accessories',
        'https://m.media-amazon.com/images/I/61i98c7VYeL._SL1310_.jpg'),
  ];
}
