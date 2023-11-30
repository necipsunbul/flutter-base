import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseState<T extends Object> extends Cubit<T> {
  BaseState(super.initialState);
  @override
  void emit(T state) {
    if (isClosed) return;
    super.emit(state);
  }
}
