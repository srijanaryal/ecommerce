import 'package:bloc/bloc.dart';
import 'package:ecommerce/models/cart_model.dart';
import 'package:equatable/equatable.dart';
import 'dart:async';
import '../../models/product_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading()) {
    on<CartStarted>(_onCartStarted);
  }

  void _onCartStarted(CartStarted event, Emitter<CartState> emit) async {
    emit(CartLoading());

    try {
      await Future<void>.delayed(Duration(seconds: 2));
      emit(CartLoaded());
    } catch (_) {}
  }

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    if (event is CartProductAdded) {
      yield* _mapCartProductAddedToState(event, state);
    } else if (event is CartProductRemoved) {
      yield* _mapCartProductRemovedToState(event, state);
    }
  }

  Stream<CartState> _mapCartProductAddedToState(
      CartProductAdded event, CartState state) async* {
    if (state is CartLoaded) {
      try {
        yield CartLoaded(
            cart: Cart(
                products: List.from(state.cart.products)..add(event.product)));
      } catch (_) {}
    }
  }

  Stream<CartState> _mapCartProductRemovedToState(
      CartProductRemoved event, CartState state) async* {
    if (state is CartLoaded) {
      try {
        yield CartLoaded(
            cart: Cart(
                products: List.from(state.cart.products)
                  ..remove(event.product)));
      } catch (_) {}
    }
  }
}
