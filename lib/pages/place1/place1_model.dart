import '/flutter_flow/flutter_flow_util.dart';
import 'place1_widget.dart' show Place1Widget;
import 'package:flutter/material.dart';

class Place1Model extends FlutterFlowModel<Place1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    columnController2 = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
