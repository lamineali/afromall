import '/cart_order_history/cart_summary/cart_summary_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_details_copy_widget.dart' show CartDetailsCopyWidget;
import 'package:flutter/material.dart';

class CartDetailsCopyModel extends FlutterFlowModel<CartDetailsCopyWidget> {
  ///  Local state fields for this page.

  bool? showCart = false;

  ///  State fields for stateful widgets in this page.

  // Model for cartSummary component.
  late CartSummaryModel cartSummaryModel;

  @override
  void initState(BuildContext context) {
    cartSummaryModel = createModel(context, () => CartSummaryModel());
  }

  @override
  void dispose() {
    cartSummaryModel.dispose();
  }
}
