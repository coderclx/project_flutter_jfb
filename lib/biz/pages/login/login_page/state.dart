import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart';
import 'package:project_flutter_jfb/biz/app/string.dart';

enum LoginType { Tel, Account }

class LoginState implements Cloneable<LoginState> {
  TextEditingController controller;
  LoginType loginType;
  String loginTypeTipText;
  String inputTelText;
  String inputPwdText;
  String title;
  bool enableLogin;

  @override
  LoginState clone() {
    LoginState loginState = new LoginState();
    loginState
      ..loginType = loginType
      ..loginTypeTipText = loginTypeTipText
      ..inputPwdText = inputPwdText
      ..title = title
      ..enableLogin = enableLogin
      ..inputTelText = inputTelText
      ..controller = controller;

    return loginState;
  }
}

LoginState initState(Map<String, dynamic> args) {
  LoginState loginState = new LoginState();
  loginState
    ..loginType = LoginType.Tel
    ..loginTypeTipText = JFBStringConfig.LoginButtonTitleAccountTipStr
    ..title = JFBStringConfig.LoginTextTitleTelTipStr;

  return loginState;
}
