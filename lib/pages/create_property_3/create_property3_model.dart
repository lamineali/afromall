import '/flutter_flow/flutter_flow_util.dart';
import 'create_property3_widget.dart' show CreateProperty3Widget;
import 'package:flutter/material.dart';

class CreateProperty3Model extends FlutterFlowModel<CreateProperty3Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
