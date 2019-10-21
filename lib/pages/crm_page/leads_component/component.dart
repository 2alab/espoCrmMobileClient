import 'package:espo_contacts/pages/crm_page/login_placeholder_component/component.dart';
import 'package:espo_contacts/pages/crm_page/login_dialog_component/component.dart';
import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class LeadsComponent extends Component<LeadsState> {
  LeadsComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<LeadsState>(
              adapter: null,
              slots: <String, Dependent<LeadsState>>{
                'login_button': LoginPlaceholderConnector() + LoginPlaceholderComponent(),
              }),
        );
}
