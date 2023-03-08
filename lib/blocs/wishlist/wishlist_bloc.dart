// import 'package:bloc/bloc.dart';
// import 'package:ecommerce/blocs/wishlist/wishlist_event.dart';
// import 'package:ecommerce/blocs/wishlist/wishlist_state.dart';
// import 'package:ecommerce/models/wishlist_model.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
//   WishlistBloc() : super(WishlistLoading());

//   @override
//   Stream<WishlistState> mapEventToState(
//     WishlistEvent event,
//   ) async* {
//     if (event is StartWishList) {
//       yield* _mapStartWishlistToState();
//     }else if
//   (event is AddWishlistProduct) {
//       yield* _mapAddWishlistToState(event,state); else if (event is RemoveWishlistProduct) {
//       yield* _mapRemoveWishlistToState(event,state);}
//       Stream<WishlistState> _mapStartWishlistToState()
      
      
      
//       async* {yield WishlistLoading();
//       try{
//         await Future<void>.delayed(Duration(seconds: 1));
      
      
//       yield  WishlistLoaded();
//        }catch (_)  {}

//              Stream<WishlistState> _mapAddWishlistProductToState(


//               AddWishlistProduct event,
//               WishlistState state,) async*{if(state is WishlistLoaded){try{yield WishlistLoaded(wishlist:Wishlist(products:List.from(state.wishlist.products)))}}}
      
//              )
//       }}}}

      
      
      
      
//       }