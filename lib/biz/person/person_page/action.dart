import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum PersonAction { action }

class PersonActionCreator {
  static Action onAction() {
    return const Action(PersonAction.action);
  }
}
