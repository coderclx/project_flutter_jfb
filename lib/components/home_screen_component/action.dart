import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeScreenAction { action }

class HomeScreenActionCreator {
  static Action onAction() {
    return const Action(HomeScreenAction.action);
  }
}
