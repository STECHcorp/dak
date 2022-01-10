import 'package:dak/components/checkbox_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dak/components/password_text_field.dart';
import 'package:dak/components/text_form_builder.dart';
import 'package:dak/constants.dart';
import 'package:dak/models/navigation_item.dart';
import 'package:dak/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

class LoginVerify extends StatefulWidget {
  @override
  _LoginVerifyState createState() => _LoginVerifyState();
}

class _LoginVerifyState extends State<LoginVerify> {
  @override
  Widget build(BuildContext context) {
    // UpdatePasswordViewModel viewModel = Provider.of<UpdatePasswordViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        title: Text(
          'Verification',
          style: TextStyle(color: textColor, fontSize: headingsFonsize),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: textColorSub),
          onPressed: () {
            final provider =
                Provider.of<NavigationProvider>(context, listen: false);
            provider.setNavigationItem(NavigationItem.logout);
          },
        ),
      ),
      backgroundColor: bgColor,
      // key: viewModel.scaffoldKey,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        children: [
          SizedBox(height: 32.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.6,
            ),
            child: buildForm(context),
          ),
        ],
      ),
    );
  }

  buildForm(
    BuildContext context,
  ) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Form(
      // key: viewModel.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "New Password",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: bodyFontSize,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          PasswordFormBuilder(
            // enabled: !viewModel.loading,
            prefix: Icons.lock,
            suffix: Icons.visibility,
            hintText: "Password",
            textInputAction: TextInputAction.done,
            // validateFunction: Validations.validatePassword,
            // submitAction: () => viewModel.login(context),
            obscureText: true,
            onSaved: (String val) {
              // viewModel.setPassword(val);
            },
            // focusNode: viewModel.passFN,
          ),
          SizedBox(height: 16.0),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Comrfim Password",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: bodyFontSize,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          PasswordFormBuilder(
            // enabled: !viewModel.loading,
            prefix: Icons.lock,
            suffix: Icons.visibility,
            hintText: "Password",
            textInputAction: TextInputAction.done,
            // validateFunction: Validations.validatePassword,
            // submitAction: () => viewModel.login(context),
            obscureText: true,
            onSaved: (String val) {
              // viewModel.setPassword(val);
            },
            // focusNode: viewModel.passFN,
          ),
          SizedBox(height: 32.0),
          Container(
            height: 45.0,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  subBgColor,
                ),
              ),
              // highlightElevation: 4.0,
              onPressed: () {
                final provider =
                    Provider.of<NavigationProvider>(context, listen: false);
                provider.setNavigationItem(NavigationItem.logout);
              },
              child: Text(
                'Reset password',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: headingsFonsize,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // onPressed: () => viewModel.login(context),
            ),
          ),
        ],
      ),
    );
  }
}
