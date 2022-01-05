import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dak/components/password_text_field.dart';
import 'package:dak/components/text_form_builder.dart';
import 'package:dak/constants.dart';
import 'package:dak/models/navigation_item.dart';
import 'package:dak/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // LoginViewModel viewModel = Provider.of<LoginViewModel>(context);

    return Scaffold(
      backgroundColor: bgColor,
      // key: viewModel.scaffoldKey,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        children: [
          SizedBox(height: 60.0),
          Container(
            height: 170.0,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/Data_security_01.jpg',
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Center(
            child: Text(
              'Log into your account and get started!',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 25.0),
          // buildForm(context, viewModel),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.6,
            ),
            child: buildForm(context),
          ),

          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account?'),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context)
                  //     .push(CupertinoPageRoute(builder: (_) => Register()));
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  buildForm(
    BuildContext context,
  ) {
    return Form(
      // key: viewModel.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormBuilder(
            // enabled: !viewModel.loading,
            prefix: Icons.mail,
            hintText: "Email",
            textInputAction: TextInputAction.next,
            // validateFunction: Validations.validateEmail,
            onSaved: (String val) {
              // viewModel.setEmail(val);
            },
            // focusNode: viewModel.emailFN,
            // nextFocusNode: viewModel.passFN,
          ),
          SizedBox(height: 15.0),
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
          Align(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: InkWell(
                // onTap: () => viewModel.forgotPassword(context),
                child: Container(
                  width: 130,
                  height: 40,
                  child: Align(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 45.0,
            width: 180.0,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
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
                provider.setNavigationItem(NavigationItem.dashboard);
              },
              child: Text(
                'Log in'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
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
