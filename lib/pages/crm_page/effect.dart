import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<CrmState> buildEffect() {
  return combineEffects(<Object, Effect<CrmState>>{
    Lifecycle.deactivate: _onInit,
  });
}

Future _onInit(Action action, Context<CrmState> ctx) async {
  if (null == ctx.state.credentials) {
    await Navigator.of(ctx.context).pushNamed('login_page');
  }
}
