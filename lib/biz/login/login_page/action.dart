import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LoginAction { onLoginAction }

class LoginActionCreator {
  static Action onLoginAction() {
    return const Action(LoginAction.onLoginAction);
  }
}
