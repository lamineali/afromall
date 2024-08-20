import '/flutter_flow/flutter_flow_util.dart';
import 'create_property1_widget.dart' show CreateProperty1Widget;
import 'package:flutter/material.dart';

class CreateProperty1Model extends FlutterFlowModel<CreateProperty1Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for propertyName widget.
  FocusNode? propertyNameFocusNode;
  TextEditingController? propertyNameTextController;
  String? Function(BuildContext, String?)? propertyNameTextControllerValidator;
  // State field(s) for propertyAddress widget.
  FocusNode? propertyAddressFocusNode;
  TextEditingController? propertyAddressTextController;
  String? Function(BuildContext, String?)?
      propertyAddressTextControllerValidator;
  // State field(s) for propertyNeighborhood widget.
  FocusNode? propertyNeighborhoodFocusNode;
  TextEditingController? propertyNeighborhoodTextController;
  String? Function(BuildContext, String?)?
      propertyNeighborhoodTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    propertyNameFocusNode?.dispose();
    propertyNameTextController?.dispose();

    propertyAddressFocusNode?.dispose();
    propertyAddressTextController?.dispose();

    propertyNeighborhoodFocusNode?.dispose();
    propertyNeighborhoodTextController?.dispose();
  }
}
