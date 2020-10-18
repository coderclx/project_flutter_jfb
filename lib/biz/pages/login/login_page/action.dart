import 'package:fish_redux/fish_redux.dart';
import 'package:project_flutter_jfb/biz/pages/login/login_page/state.dart';

//TODO replace with your own action
enum LoginAction { onLoginAction, onTelInputTextChanged, onLoginTypeTransation }

class LoginActionCreator {
  static Action onLoginAction() {
    return const Action(LoginAction.onLoginAction);
  }

  static Action onTelInputTextChanged() {
    return const Action(LoginAction.onTelInputTextChanged);
  }

  static Action onLoginTypeTransation(LoginType loginType) {
    return Action(LoginAction.onLoginTypeTransation, payload: loginType);
  }
}
