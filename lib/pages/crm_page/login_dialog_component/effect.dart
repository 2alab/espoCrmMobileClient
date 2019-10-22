import 'package:espo_contacts/models/credentials.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'action.dart';
import 'state.dart';

import 'package:espo_contacts/api/espo_api.dart' as espo;

Effect<LoginDialogState> buildEffect() {
  return combineEffects(<Object, Effect<LoginDialogState>>{
    LoginDialogAction.onCloseAuthDialog: (a, ctx) =>
        Navigator.of(ctx.context).pop(),
    LoginDialogAction.onAuth: _onAuth,
  });
}

void _onAuth(Action action, Context<LoginDialogState> ctx) async {
  var credentials = action.payload;
  try {
    var user = await espo.getUser(credentials);
    ctx.dispatch(LoginDialogActionCreator.authSuccess(credentials));
    ctx.dispatch(LoginDialogActionCreator.onCloseAuthDialog());
  } on espo.UnauthorizedException catch (e) {
    ctx.dispatch(
        LoginDialogActionCreator.authFail("Wrong credentials", credentials));
  } catch (e) {
    ctx.dispatch(
        LoginDialogActionCreator.authFail("Unknown exception", credentials));
  }
}
