import 'package:bloc/bloc.dart';
import 'package:ecommerce/models/models.dart';
import 'package:equatable/equatable.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class StartWishList extends WishlistEvent {}

class AddWishlistProduct extends WishlistEvent {
  final Product product;

  const AddWishlistProduct(this.product);

  @override
  List<Object> get props => [product];
}

class RemoveWishlistProduct extends WishlistEvent {
  final Product product;

  const RemoveWishlistProduct(this.product);

  @override
  List<Object> get props => [product];
}
