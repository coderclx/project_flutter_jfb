import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_jfb/biz/login/login_page/action.dart';

import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Center(
      child: RaisedButton(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          color: Colors.green,
          child: Text(
            "进入",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            dispatch(LoginActionCreator.onLoginAction());
          }),
    ),
  );
}
