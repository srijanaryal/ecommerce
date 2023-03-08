import 'package:bloc/bloc.dart';
import 'package:ecommerce/screens/wishlist/wishlist_screen.dart';
import 'package:equatable/equatable.dart';

abstract class WishlistState extends Equatable {
  WishlistState();
  @override
  List<Object> get props => [];
}

class WishlistLoading extends WishlistState {}

class WishlistLoaded extends WishlistState {
  final WishlistScreen wishlist;

  WishlistLoaded(this.wishlist);
  @override
  List<Object> get props => [wishlist];
}

class WishlistError extends WishlistState {}
