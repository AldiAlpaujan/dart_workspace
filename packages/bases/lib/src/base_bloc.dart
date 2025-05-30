import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_data_state.dart';

abstract class BaseBloc<S, T> extends Cubit<S> {
  BaseBloc(super.initialState, this._data);

  final T _data;

  @protected
  T get data => _data;

  bool _isBusy = false;

  bool get isBusy => _isBusy;

  set setBusy(bool busy) => _isBusy = busy;

  @protected
  Future<void> run(
    Future<void> Function() process, [
    bool shouldRun = true,
  ]) async {
    if (!isBusy && shouldRun) {
      _isBusy = true;
      await process();
      _isBusy = false;
    }
  }

  @protected
  String getErrorMessage(DataState result) {
    var errorMessage = 'Terjadi kesalahan, silahkan coba beberapa saat lagi :(';
    try {
      final String errorMsg = result.error?.response?.data?['message'] ?? '';
      if (errorMsg.isNotEmpty) {
        errorMessage = errorMsg;
      }
    } catch (e) {
      errorMessage = 'Terjadi kesalahan, silahkan coba beberapa saat lagi :(';
    }
    return errorMessage;
  }
}
