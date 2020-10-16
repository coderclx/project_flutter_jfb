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
  bool enableLogin;
  @override
  LoginState clone() {
    LoginState loginState = new LoginState();
    loginState
      ..inputTelText = inputTelText
      ..controller = controller
      ..loginType =
          loginType == LoginType.Tel ? LoginType.Account : LoginType.Tel
      ..loginTypeTipText = loginType == LoginType.Tel ? '账号密码登录' : '验证码登录/注册';

    if (loginType == LoginType.Tel) {
      enableLogin = inputTelText == null || inputTelText.isEmpty;
    } else {}
    return loginState;
  }
}

LoginState initState(Map<String, dynamic> args) {
  LoginState loginState = new LoginState();
  loginState
    ..loginType = LoginType.Tel
    ..loginTypeTipText = JFBStringConfig.LoginButtonTitleAccountTipStr
    ..inputPwdText;

  return loginState;
}
