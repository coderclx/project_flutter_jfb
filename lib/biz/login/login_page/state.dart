import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart';

enum LoginType { Tel, Account }

class LoginState implements Cloneable<LoginState> {
  TextEditingController controller;
  LoginType loginType;
  String loginTypeTipText;
  String inputTelText;
  String inputPwdText;
  bool enableLogin;
  @override
  LoginState clone() {
    LoginState loginState = new LoginState();
    loginState
      ..inputTelText = inputTelText
      ..controller = controller;
    if (loginType == LoginType.Tel) {
      enableLogin = inputTelText == null || inputTelText.isEmpty;
    } else {}
    return loginState;
  }
}

LoginState initState(Map<String, dynamic> args) {
  LoginState loginState = new LoginState();
  loginState.loginType = LoginType.Tel;
  loginState.loginTypeTipText = '账号/密码登录';
  return loginState;
}
