import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:ecommerce/models/cart_model.dart';
import 'package:ecommerce/models/models.dart';
import 'package:equatable/equatable.dart';

import 'dart:async';

import 'package:flutter/cupertino.dart';
part "cart_event.dart";
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading());

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    if (event is CartStarted) {
      yield* _mapCartStartedtoState();
    } else if (event is CartProductAdded) {
      yield* _mapCartProductAddedToState(event, state);
    } else if (event is CartProductRemoved) {
      yield* __mapCartProductRemovedToState(event, state);
    }
  }

  Stream<CartState> _mapCartStartedtoState() async* {
    yield CartLoading();

    try {
      await Future<void>.delayed(Duration(seconds: 2));
      yield CartLoaded();
    } catch (_) {}
  }

  Stream<CartState> _mapCartProductAddedToState(
      CartProductAdded event, CartState state) async* {
    if (state is CartLoaded) {
      try {
        yield CartLoaded(cart: Cart(products: List.from(state.cart.pro)));
      } catch (_) {}
    }
  }
}
