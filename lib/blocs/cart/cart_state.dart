part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  CartState();

  @override
  List<Object> get props => [];
}

class CartLoading extends CartState {
  final Cart cart;

  CartLoading({this.cart = const Cart()});
  @override
  List<Object> get props => [];
}

class CartLoaded extends CartState {
  @override
  List<Object> get props => [];
}

class CartError extends CartState {
  @override
  List<Object> get props => [];
}
