import 'package:bloc/bloc.dart';
import 'package:coffee_shop_with_block/model/cart_model.dart';

import 'package:equatable/equatable.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartInitial(list: [], initial: [], index: 1)) {
    on<GetInitial>(_getInitial);
  }
}

void _getInitial(GetInitial event, Emitter emit) {
  emit(CartLoading(list: [], initial: [], index: 1));
}
