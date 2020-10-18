import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_jfb/biz/pages/login/login_page/action.dart';

import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Container(
      padding: new EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Column(
        children: [
          Container(
            padding: new EdgeInsets.only(top: 100),
            child: Row(
              children: [
                Text(state.title,
                    style: new TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0))
              ],
            ),
          ),
          Container(
            padding: new EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Container(
                  height: 60,
                  child: TextField(
                    autofocus: true,
                    onChanged: (value) {
                      state.inputTelText = value;
                      dispatch(LoginActionCreator.onTelInputTextChanged());
                    },
                    controller: state.controller,
                    decoration: new InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintText: state.loginType == LoginType.Tel
                            ? '请输入电话号码'
                            : '请输入账号'),
                  ),
                ),
                Visibility(
                  visible: state.loginType == LoginType.Tel ? false : true,
                  child: TextField(
                    onChanged: (value) {
                      state.inputTelText = value;
                      dispatch(LoginActionCreator.onTelInputTextChanged());
                    },
                    controller: state.controller,
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: '请输入密码',
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: new EdgeInsets.only(top: 40),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                    disabledElevation: 1,
                    color: Colors.green,
                    splashColor: Colors.green,
                    disabledColor: Colors.green[100],
                    child: Text(
                      "获取验证码",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed:
                        state.inputTelText == null || state.inputTelText.isEmpty
                            ? null
                            : () {
                                dispatch(LoginActionCreator.onLoginAction());
                              }),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                  color: Colors.grey[200],
                  highlightColor: Colors.grey[200],
                  splashColor: Colors.grey[200],
                  child: Text(
                    state.loginTypeTipText,
                    textAlign: TextAlign.start,
                    style: TextStyle(backgroundColor: Colors.grey[200]),
                  ),
                  onPressed: () {
                    dispatch(LoginActionCreator.onLoginTypeTransation(
                        state.loginType == LoginType.Account
                            ? LoginType.Tel
                            : LoginType.Account));
                  }),
            ],
          )
        ],
      ),
    ),
  );
}
