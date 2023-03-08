import 'package:ecommerce/models/models.dart';
import 'package:equatable/equatable.dart';

class Wishlist extends Equatable {
  final List<Product> products;

  Wishlist(this.products);

  @override
  // TODO: implement props
  List<Object?> get props => [products];
}
