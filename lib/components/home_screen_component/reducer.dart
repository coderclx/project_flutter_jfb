import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeScreenState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeScreenState>>{
      HomeScreenAction.action: _onAction,
    },
  );
}

HomeScreenState _onAction(HomeScreenState state, Action action) {
  final HomeScreenState newState = state.clone();
  return newState;
}
