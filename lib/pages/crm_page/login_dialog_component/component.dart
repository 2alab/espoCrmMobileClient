import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class LoginDialogComponent extends Component<LoginDialogState> {
  LoginDialogComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<LoginDialogState>(
                adapter: null,
                slots: <String, Dependent<LoginDialogState>>{
                }),);

}
