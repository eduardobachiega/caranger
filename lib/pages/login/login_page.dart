import 'package:caranger/pages/login/widget/login_widgets.dart';
import 'package:caranger/widget/default_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(15),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BounceAnimation(),
              Divider(color: Colors.transparent, height: 50),
              EmailTextField(emailController: emailController, focus: focus),
              Divider(),
              PasswordTextField(focus: focus, passwordController: passwordController),
              Divider(),
              DefaultButton(text: "Entrar", onPressed: null)
            ],
          ),
        ),
      ),
    ));
  }
}
