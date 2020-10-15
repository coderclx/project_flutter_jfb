import 'package:fish_redux/fish_redux.dart';

enum MainAction { action, onBottomNavPageChanged }

class MainActionCreator {
  static Action onAction() {
    return const Action(MainAction.action);
  }

  static Action onBottomNavPageChanged() {
    return const Action(MainAction.onBottomNavPageChanged);
  }
}
