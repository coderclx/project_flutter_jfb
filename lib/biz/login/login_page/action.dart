import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LoginAction { onLoginAction, onTelInputTextChanged, onLoginTypeTransation }

class LoginActionCreator {
  static Action onLoginAction() {
    return const Action(LoginAction.onLoginAction);
  }

  static Action onTelInputTextChanged() {
    return const Action(LoginAction.onTelInputTextChanged);
  }

  static Action onLoginTypeTransation() {
    return const Action(LoginAction.onLoginTypeTransation);
  }
}
