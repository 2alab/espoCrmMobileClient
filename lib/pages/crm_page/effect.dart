import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<CrmState> buildEffect() {
  return combineEffects(<Object, Effect<CrmState>>{
    Lifecycle.initState: _onInit,
    CrmAction.onShowAuthDialog: _onShowAuthDialog,
  });
}

void _onInit(Action action, Context<CrmState> ctx) async {}

void _onShowAuthDialog(Action action, Context<CrmState> ctx) async {
  Widget loginDialog = ctx.buildComponent("login_dialog");
  showDialog(
      context: ctx.context,
      barrierDismissible: false,
      builder: (bc) => loginDialog);
}
