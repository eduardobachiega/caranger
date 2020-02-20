import 'package:caranger/stores/user_store.dart';
import 'package:caranger/widget/default_input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key key,
    @required this.focus,
    @required this.passwordController,
  }) : super(key: key);

  final FocusNode focus;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focus,
      controller: passwordController,
      keyboardType: TextInputType.text,
      autofocus: false,
      style: new TextStyle(color: Colors.white, fontSize: 20),
      obscureText: true,
      decoration:
          DefaultInputTextDecoration.getInputDecoration(context, "Senha"),
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key key,
    @required this.emailController,
    @required this.focus,
  }) : super(key: key);

  final TextEditingController emailController;
  final FocusNode focus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      textInputAction: TextInputAction.next,
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      style: new TextStyle(color: Colors.white, fontSize: 20),
      onFieldSubmitted: (v) {
        FocusScope.of(context).requestFocus(focus);
      },
      decoration:
          DefaultInputTextDecoration.getInputDecoration(context, "Email"),
    );
  }
}

class LogoImageView extends StatelessWidget {
  const LogoImageView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('logo.png'),
      height: 200,
      width: 200,
    );
  }
}