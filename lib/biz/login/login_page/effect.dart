import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:project_flutter_jfb/biz/app/route.dart';
import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.onLoginAction: _onAction,
  });
}

void _onAction(Action action, Context<LoginState> ctx) {
  Navigator.of(ctx.context).pushReplacementNamed(RouteConfig.MAIN_PAGE_PATH);
}
