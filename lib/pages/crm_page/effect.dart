import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CrmState> buildEffect() {
  return combineEffects(<Object, Effect<CrmState>>{
    CrmAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CrmState> ctx) {
}
