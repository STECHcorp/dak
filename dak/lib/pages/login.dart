import 'package:dak/components/checkbox_widget.dart';
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
          SizedBox(height: 80.0),
          Center(
            child: Text(
              'Sign In Now!',
              style: TextStyle(
                color: textColor,
                fontSize: h1Fonsize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Center(
            child: Text(
              'You have already an accout ?\nGreat sign in right!',
              style: TextStyle(
                fontSize: bodyFontSize,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
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

          SizedBox(height: 152.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a member?'),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context)
                  //     .push(CupertinoPageRoute(builder: (_) => Register()));
                },
                child: Text(
                  'Join Now',
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
              "Email / Phone Number ",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: bodyFontSize,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 8.0),
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
          SizedBox(height: 16.0),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Email / Phone Number ",
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
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [CheckboxWidget(), Text("Keep Login")]),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                width: 130,
                height: 40,
                child: Align(
                  child: GestureDetector(
                    onTap: () {
                      final provider = Provider.of<NavigationProvider>(context,
                          listen: false);
                      provider.setNavigationItem(NavigationItem.updatePassword);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: textColorLight,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
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
                provider.setNavigationItem(NavigationItem.dashboard);
              },
              child: Text(
                'Log in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: headingsFonsize,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // onPressed: () => viewModel.login(context),
            ),
          ),
          SizedBox(height: 32.0),
          Text(
            "Or continue with",
          ),
          SizedBox(height: 24.0),
          GridView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: screenWidth / 100,
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
            ),
            children: [
              Container(
                height: 42.0,
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
                    provider.setNavigationItem(NavigationItem.dashboard);
                  },
                  child: Text(
                    'Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: headingsFonsize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // onPressed: () => viewModel.login(context),
                ),
              ),
              Container(
                height: 42.0,
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
                    provider.setNavigationItem(NavigationItem.dashboard);
                  },
                  child: Text(
                    'Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: headingsFonsize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // onPressed: () => viewModel.login(context),
                ),
              ),
              Container(
                height: 42.0,
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
                    provider.setNavigationItem(NavigationItem.dashboard);
                  },
                  child: Text(
                    'Twitter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: headingsFonsize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // onPressed: () => viewModel.login(context),
                ),
              ),
              Container(
                height: 42.0,
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
                    provider.setNavigationItem(NavigationItem.dashboard);
                  },
                  child: Text(
                    'Apple',
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
        ],
      ),
    );
  }
}
