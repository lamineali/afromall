import '/cart_order_history/cart_badge/cart_badge_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_m_a_i_n_copy_widget.dart' show HomePageMAINCopyWidget;
import 'package:flutter/material.dart';

class HomePageMAINCopyModel extends FlutterFlowModel<HomePageMAINCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cartBadge component.
  late CartBadgeModel cartBadgeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    cartBadgeModel = createModel(context, () => CartBadgeModel());
  }

  @override
  void dispose() {
    cartBadgeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
