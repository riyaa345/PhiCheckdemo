import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_leave_management_model.dart';
export 'user_leave_management_model.dart';

class UserLeaveManagementWidget extends StatefulWidget {
  const UserLeaveManagementWidget({
    super.key,
    required this.leaveuser,
  });

  final LeaveRecord? leaveuser;

  @override
  State<UserLeaveManagementWidget> createState() =>
      _UserLeaveManagementWidgetState();
}

class _UserLeaveManagementWidgetState extends State<UserLeaveManagementWidget> {
  late UserLeaveManagementModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserLeaveManagementModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Leave Application',
                    style: FlutterFlowTheme.of(context).displaySmall,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      width: 358.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  widget.leaveuser?.leavetitle,
                                  'title',
                                ),
                                style: FlutterFlowTheme.of(context).titleLarge,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  widget.leaveuser?.reason,
                                  'reason',
                                ),
                                style: FlutterFlowTheme.of(context).titleLarge,
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: AutoSizeText(
                              valueOrDefault<String>(
                                widget.leaveuser?.startdate?.toString(),
                                'date',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context).bodyLarge,
                              minFontSize: 10.0,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: AutoSizeText(
                              valueOrDefault<String>(
                                widget.leaveuser?.enddate?.toString(),
                                'date',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context).bodyLarge,
                              minFontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Text(
                      'Status:',
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.leaveuser?.leavestatus,
                      'pending',
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
