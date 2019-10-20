import 'package:espo_contacts/pages/crm_page/leads_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class LoginButtonComponent extends Component<LoginButtonState> {
  LoginButtonComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<LoginButtonState>(
              adapter: null,
              slots: <String, Dependent<LoginButtonState>>{

              }),
        );
}
