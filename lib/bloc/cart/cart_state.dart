part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  final List<Cart> list;
  final List<Cart> initial;
  final int index;

  const CartState({
    required this.list,
    required this.initial,
    required this.index,
  });
  @override
  List<Object> get props => [list, initial];
}

class CartInitial extends CartState {
  const CartInitial(
      {required super.list, required super.initial, required super.index});
}

class CartLoading extends CartState {
  const CartLoading(
      {required super.list, required super.initial, required super.index});
}

class CartFailure extends CartState {
  const CartFailure(
      {required super.list, required super.initial, required super.index});
}

class CartDeletedSuccesfully extends CartState {
  const CartDeletedSuccesfully(
      {required super.list, required super.initial, required super.index});
}
