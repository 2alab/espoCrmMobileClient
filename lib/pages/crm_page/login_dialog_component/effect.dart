import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<LoginDialogState> buildEffect() {
  return combineEffects(<Object, Effect<LoginDialogState>>{
    LoginDialogAction.onCloseAuthDialog: (a, ctx) =>
        Navigator.of(ctx.context).pop(),
  });
}
