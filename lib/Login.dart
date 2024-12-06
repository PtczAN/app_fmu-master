import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'telaServicos.dart' show HomePageWidget;

import 'LoginModel.dart';
export 'LoginModel.dart';


class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFE70707),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0, -0.21),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(48, 0, 48, 0),
                    child: Container(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          //  FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(48, 0, 48, 0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color: Color(0x33FFFFFF),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              controller: _model.textController1,
                              focusNode: _model.textFieldFocusNode1,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: (TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.grey,
                                      letterSpacing: 0.0,
                                 ) 
                                 ),
                                hintStyle: (TextStyle(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                 ) 
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E0E0),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                              ),
                              style: (TextStyle(
                                    fontFamily: 'Inter',
                                    color: Colors.green,
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    height: 1,
                                  )
                                  ),
                              keyboardType: TextInputType.emailAddress,
                              validator: _model.textController1Validator!
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: false,
                              obscureText: !_model.passwordVisibility,
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                labelStyle: (TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.grey,
                                      letterSpacing: 0.0,
                                 ) 
                                 ),
                                hintStyle: (TextStyle(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                 ) 
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E0E0),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                suffixIcon: InkWell(
                                  onTap: () => safeSetState(
                                    () => _model.passwordVisibility =
                                        !_model.passwordVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.passwordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Colors.grey,
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: (TextStyle(
                                    fontFamily: 'Inter',
                                    color: Colors.green,
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    height: 1,
                              )
                                  ),
                              minLines: 1,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ].divide(const SizedBox(height: 24)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(48, 0, 48, 0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Entrar',
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width,
                        height: 56,
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: Color(0xFFF80F0F),
                        textStyle: TextStyle(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3,
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(48, 0, 48, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Não tem uma conta?',
                          style:
                              (TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xFFA5A3A3),
                                    letterSpacing: 0.0,
                              )
                                  ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            //context.pushNamed('Registro');
                            Navigator.pushNamed(context, '/Register');
                          },
                          child: Text(
                            'Cadastre-se',
                            style:(TextStyle(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF5CAFD6),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                            )
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 8)),
                    ),
                  ),
                ].divide(const SizedBox(height: 32)),
              ),
            ),
          ),
        )
      )
    );
  }
}

/*extension on List<dynamic> {
  divide(SizedBox sizedBox) {}
}*/
