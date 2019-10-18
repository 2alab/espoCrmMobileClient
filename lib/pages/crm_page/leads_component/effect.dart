import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<LeadsState> buildEffect() {
  return combineEffects(<Object, Effect<LeadsState>>{
    LeadsAction.action: _onAction,
  });
}

Future _onAction(Action action, Context<LeadsState> ctx) async {
  await Navigator.of(ctx.context).pushNamed('login_page');
}
