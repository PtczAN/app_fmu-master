import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:fmu_app/RegisterModel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'RegisterModel.dart';
export 'RegisterModel.dart';

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({super.key});

  @override
  State<RegistroWidget> createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  late RegistroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistroModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();
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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: Container(
                      child: Text(
                        'Criar Conta',
                        style: (TextStyle(
                                  fontFamily: 'Inter Tight',
                                  color: Color(0xFFE70707),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                )
                                ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
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
                                labelText: 'Nome Completo',
                                labelStyle: (TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.grey,
                                      letterSpacing: 0.0,
                                    )
                                    ),
                                hintStyle: (TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.grey,
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
                                    letterSpacing: 0.0,
                                  )
                                  ),
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'CPF',
                                labelStyle: (TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.grey,
                                      letterSpacing: 0.0,
                                    )
                                    ),
                                 hintStyle: (TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.grey,
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
                                    letterSpacing: 0.0,
                                  )
                                  ),
                              minLines: 1,
                              maxLength: 11,
                              keyboardType: TextInputType.number,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController3,
                              focusNode: _model.textFieldFocusNode3,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Data de Nascimento',
                                labelStyle: (TextStyle(
                                      fontFamily: 'Inter',
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
                                    letterSpacing: 0.0,
                                  )
                                  ),
                              minLines: 1,
                              keyboardType: TextInputType.datetime,
                              validator: _model.textController3Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController4,
                              focusNode: _model.textFieldFocusNode4,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Celular',
                                labelStyle: (TextStyle(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    )
                                    ),
                                hintStyle:(TextStyle(
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
                                    letterSpacing: 0.0,
                                  )
                                  ),
                              minLines: 1,
                              keyboardType: TextInputType.phone,
                              validator: _model.textController4Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController5,
                              focusNode: _model.textFieldFocusNode5,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: (TextStyle(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    )
                                    ),
                                hintStyle:(TextStyle(
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
                                    letterSpacing: 0.0,
                                  )
                                  ),
                              minLines: 1,
                              keyboardType: TextInputType.emailAddress,
                              validator: _model.textController5Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController6,
                              focusNode: _model.textFieldFocusNode6,
                              autofocus: false,
                              obscureText: !_model.passwordVisibility1,
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                labelStyle: (TextStyle(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    )
                                    ),
                                hintStyle:(TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.grey,
                                      letterSpacing: 0.0,
                                    )
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:Colors.red,
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
                                    () => _model.passwordVisibility1 =
                                        !_model.passwordVisibility1,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.passwordVisibility1
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
                                    letterSpacing: 0.0,
                                  )
                                  ),
                              minLines: 1,
                              validator: _model.textController6Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController7,
                              focusNode: _model.textFieldFocusNode7,
                              autofocus: false,
                              obscureText: !_model.passwordVisibility2,
                              decoration: InputDecoration(
                                labelText: 'Confirmar Senha',
                                labelStyle: (TextStyle(
                                      fontFamily: 'Inter',
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
                                    () => _model.passwordVisibility2 =
                                        !_model.passwordVisibility2,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.passwordVisibility2
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
                                    letterSpacing: 0.0,
                                  )
                                  ),
                              minLines: 1,
                              validator: _model.textController7Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 16)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Cadastrar',
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width,
                        height: 56,
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: Color(0xFFF80F0F),
                        textStyle:(TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                )
                                ),
                        elevation: 3,
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Já tem uma conta?',
                          style: (TextStyle(
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
                            //context.pushNamed('HomePage');
                            Navigator.pushNamed(context, '/telaServicos');
                          },
                          child: Text(
                            'Entrar',
                            style: (TextStyle(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF5CAFD6),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                )
                                ),
                          ),
                        ),
                      ].divide(SizedBox(width: 8)),
                    ),
                  ),
                ].divide(SizedBox(height: 24)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
