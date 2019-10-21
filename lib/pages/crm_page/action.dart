import 'package:fish_redux/fish_redux.dart';

enum CrmAction { selectTab, onShowAuthDialog }

class CrmActionCreator {
  static Action onSelectTab(int tabId) {
    return Action(CrmAction.selectTab, payload: tabId);
  }

  static Action onShowAuthDialog() {
    return Action(CrmAction.onShowAuthDialog);
  }
}
