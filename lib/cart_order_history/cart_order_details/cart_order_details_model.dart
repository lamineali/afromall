import '/cart_order_history/cart_product/cart_product_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_order_details_widget.dart' show CartOrderDetailsWidget;
import 'package:flutter/material.dart';

class CartOrderDetailsModel extends FlutterFlowModel<CartOrderDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for cartProduct dynamic component.
  late FlutterFlowDynamicModels<CartProductModel> cartProductModels;

  @override
  void initState(BuildContext context) {
    cartProductModels = FlutterFlowDynamicModels(() => CartProductModel());
  }

  @override
  void dispose() {
    cartProductModels.dispose();
  }
}
