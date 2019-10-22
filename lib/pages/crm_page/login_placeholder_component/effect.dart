import 'package:espo_contacts/pages/crm_page/action.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<LoginPlaceholderState> buildEffect() {
  return combineEffects(<Object, Effect<LoginPlaceholderState>>{
    LoginPlaceholderAction.onShowLoginForm: _onShowLoginForm,
  });
}

void _onShowLoginForm(Action action, Context<LoginPlaceholderState> ctx) {
  ctx.dispatch(CrmActionCreator.onShowAuthDialog());
}