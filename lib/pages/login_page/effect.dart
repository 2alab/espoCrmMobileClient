import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.onLogin: _onLogin,
  });
}

Future _onLogin(Action action, Context<LoginState> ctx) async {
  await Navigator.of(ctx.context).pop();
}
