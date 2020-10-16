import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_jfb/biz/login/login_page/action.dart';

import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Container(
      padding: new EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: new EdgeInsets.only(top: 100),
            child: Row(
              children: [
                Text(state.loginType == LoginType.Tel ? '登陆/注册' : '密码登陆',
                    style: new TextStyle(
                        color: Colors.black87,
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
                    onChanged: (value) {
                      state.inputTelText = value;
                      dispatch(LoginActionCreator.onTelInputTextChanged());
                    },
                    controller: state.controller,
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey[200])),
                        hintText: state.loginType == LoginType.Tel
                            ? '请输入电话号码'
                            : '请输入账号'),
                  ),
                ),
                Container(
                  height: state.loginType == LoginType.Tel ? 60 : 0,
                  child: TextField(
                    onChanged: (value) {
                      state.inputTelText = value;
                      dispatch(LoginActionCreator.onTelInputTextChanged());
                    },
                    controller: state.controller,
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: '请输入密码',
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.grey[200])),
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
          Container(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                      color: Colors.white,
                      highlightColor: Colors.white,
                      splashColor: Colors.white,
                      child: Text(
                        state.loginTypeTipText,
                        textAlign: TextAlign.left,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                      onPressed: () {
                        dispatch(LoginActionCreator.onLoginTypeTransation());
                      }),
                ],
              ))
        ],
      ),
    ),
  );
}
