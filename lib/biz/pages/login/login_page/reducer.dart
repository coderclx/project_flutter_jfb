import 'package:fish_redux/fish_redux.dart';
import 'package:project_flutter_jfb/biz/app/string.dart';

import 'action.dart';
import 'state.dart';

Reducer<LoginState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginState>>{
      LoginAction.onLoginAction: _onAction,
      LoginAction.onTelInputTextChanged: _onTelInputTextChanged,
      LoginAction.onLoginTypeTransation: _onLoginTypeTransation,
    },
  );
}

LoginState _onTelInputTextChanged(LoginState state, Action action) {
  final LoginState newState = state.clone();
  return newState;
}

LoginState _onLoginTypeTransation(LoginState state, Action action) {
  final LoginState newState = state.clone()
    ..loginType = action.payload
    ..loginTypeTipText = action.payload == LoginType.Account
        ? JFBStringConfig.LoginButtonTitleAuthCodeTipStr
        : JFBStringConfig.LoginButtonTitleAccountTipStr
    ..title = action.payload == LoginType.Account
        ? JFBStringConfig.LoginTextTitlePwdTipStr
        : JFBStringConfig.LoginTextTitleTelTipStr;

  return newState;
}

LoginState _onAction(LoginState state, Action action) {
  final LoginState newState = state.clone();
  return newState;
}
