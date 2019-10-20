import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<LoginButtonState> buildEffect() {
  return combineEffects(<Object, Effect<LoginButtonState>>{
    LoginButtonAction.onShowLoginForm: _onShowLoginForm,
  });
}

Future _onShowLoginForm(Action action, Context<LoginButtonState> ctx) async {
  await Navigator.of(ctx.context).pushNamed('login_page');
}
