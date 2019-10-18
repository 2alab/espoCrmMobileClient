import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CrmPage extends Page<CrmState, Map<String, dynamic>> {
  CrmPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CrmState>(
                adapter: null,
                slots: <String, Dependent<CrmState>>{
                }),
            middleware: <Middleware<CrmState>>[
            ],);

}