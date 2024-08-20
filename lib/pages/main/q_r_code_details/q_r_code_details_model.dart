import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'q_r_code_details_widget.dart' show QRCodeDetailsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class QRCodeDetailsModel extends FlutterFlowModel<QRCodeDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  var scanedCode = '';
  // Stores action output result for [Firestore Query - Query a collection] action in QRCodeDetails widget.
  QrCodesRecord? scanResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
