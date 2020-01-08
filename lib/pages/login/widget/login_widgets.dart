import 'package:caranger/pages/login/store/login_store.dart';
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
      autofocus: true,
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

class BounceAnimation extends StatefulWidget {
  @override
  _BounceAnimationState createState() => _BounceAnimationState();
}

class _BounceAnimationState extends State<BounceAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  final _store = LoginStore();

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
      lowerBound: 0.0,
      upperBound: 0.1,

    );
    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.addStatusListener((AnimationStatus status){
      switch(status){
        case AnimationStatus.dismissed:
      break;

      case AnimationStatus.forward:
        break;

      case AnimationStatus.reverse:
      break;

      case AnimationStatus.completed:
        _animationController.reverse().then((_) {
          _animationController.forward();
        },
        onError: (e) {

        });
      break;
    }
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    _store.adjustScale(_animationController.value);
    return Center(
        child: Observer(
          builder: (_) => Transform.scale(
              scale: _store.scale,
              child: LogoImageView()
          )
        ),
      );
  }

}
