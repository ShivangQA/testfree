import 'models/login_one_model.dart';
import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';
import 'package:shiv_s_application216/core/utils/validation_functions.dart';
import 'package:shiv_s_application216/widgets/custom_elevated_button.dart';
import 'package:shiv_s_application216/widgets/custom_text_form_field.dart';
import 'provider/login_one_provider.dart';

class LoginOneScreen extends StatefulWidget {
  const LoginOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginOneScreenState createState() => LoginOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginOneProvider(),
      child: LoginOneScreen(),
    );
  }
}

class LoginOneScreenState extends State<LoginOneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 177.v,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(),
                    Text(
                      "lbl_sign_in".tr,
                      style: theme.textTheme.headlineMedium,
                    ),
                    SizedBox(height: 28.v),
                    _buildEmailField(context),
                    SizedBox(height: 23.v),
                    _buildPasswordField(context),
                    SizedBox(height: 23.v),
                    _buildSignInButton(context),
                    SizedBox(height: 35.v),
                    Text(
                      "msg_forgot_your_login".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildCreateAccountButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Selector<LoginOneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.emailFieldController,
      builder: (context, emailFieldController, child) {
        return CustomTextFormField(
          controller: emailFieldController,
          hintText: "lbl_email".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Selector<LoginOneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.passwordFieldController,
      builder: (context, passwordFieldController, child) {
        return CustomTextFormField(
          controller: passwordFieldController,
          hintText: "lbl_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSignInButton(BuildContext context) {
    return CustomElevatedButton(
      height: 51.v,
      text: "lbl_sign_in".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL5,
    );
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
      height: 25.v,
      width: 114.h,
      text: "lbl_create_account".tr,
      margin: EdgeInsets.only(
        left: 138.h,
        right: 138.h,
        bottom: 24.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL12,
      buttonTextStyle: theme.textTheme.bodyMedium!,
    );
  }
}
