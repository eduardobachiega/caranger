import 'package:caranger/stores/user_store.dart';
import 'package:caranger/pages/login/widget/login_widgets.dart';
import 'package:caranger/stores/loading_store.dart';
import 'package:caranger/utils/keyboard_dismiss.dart';
import 'package:caranger/widget/default_button.dart';
import 'package:caranger/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
  UserStore store;
  LoadingStore loadingStore;

  void login() {
    store.login(context, emailController.text, passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    store = Provider.of<UserStore>(context);
    loadingStore = Provider.of<LoadingStore>(context);

    return KeyboardDismiss(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                BounceAnimation(
                  store: loadingStore,
                  imageSize: 200,
                ),
                Divider(color: Colors.transparent, height: 50),
                EmailTextField(emailController: emailController, focus: focus),
                Divider(),
                PasswordTextField(
                    focus: focus, passwordController: passwordController),
                Divider(),
                DefaultButton(text: "Entrar", onPressed: login)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
