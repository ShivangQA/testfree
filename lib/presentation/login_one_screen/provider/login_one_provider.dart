import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/presentation/login_one_screen/models/login_one_model.dart';

/// A provider class for the LoginOneScreen.
///
/// This provider manages the state of the LoginOneScreen, including the
/// current loginOneModelObj
class LoginOneProvider extends ChangeNotifier {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  LoginOneModel loginOneModelObj = LoginOneModel();

  @override
  void dispose() {
    super.dispose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
  }
}
