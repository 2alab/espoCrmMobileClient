import 'package:espo_contacts/pages/crm_page/action.dart';
import 'package:espo_contacts/pages/crm_page/login_dialog_component/action.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<LeadsState> buildEffect() {
  return combineEffects(<Object, Effect<LeadsState>>{
    Lifecycle.initState: _onInit,
  });
}

void _onInit(Action action, Context<LeadsState> ctx) {
  if (null == ctx.state.credentials) {
    Future.delayed(
        Duration.zero, () => ctx.dispatch(CrmActionCreator.onShowAuthDialog()));
  }
}
