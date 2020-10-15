import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MainState> buildReducer() {
  return asReducer(
    <Object, Reducer<MainState>>{
      MainAction.action: _onAction,
      MainAction.onBottomNavPageChanged: _onBottomNavPageChanged,
    },
  );
}

MainState _onAction(MainState state, Action action) {
  final MainState newState = state.clone();

  return newState;
}

MainState _onBottomNavPageChanged(MainState state, Action action) {
  final MainState newState = state.clone();
  newState.currentIndex = state.currentIndex;
  return newState;
}
