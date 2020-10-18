import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeScreenState> buildEffect() {
  return combineEffects(<Object, Effect<HomeScreenState>>{
    HomeScreenAction.action: _onAction,
  });
}

void _onAction(Action action, Context<HomeScreenState> ctx) {
}
