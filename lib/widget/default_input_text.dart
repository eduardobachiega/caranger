import 'package:flutter/material.dart';

class DefaultInputText extends StatelessWidget {
  final String labelText;
  final FocusNode focusNode;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool autoFocus;

  const DefaultInputText(
      {Key key,
        this.labelText,
        this.focusNode,
        this.controller,
        this.inputType,
        this.autoFocus})
      : super();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      keyboardType: inputType,
      autofocus: autoFocus,
      style: new TextStyle(color: Colors.white, fontSize: 20),
      obscureText: true,
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColorLight),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).accentColor),
          ),
          labelText: labelText,
          labelStyle:
          TextStyle(color: Theme.of(context).accentColor, fontSize: 20)),
    );
  }
}

class DefaultInputTextDecoration {
  static InputDecoration getInputDecoration(BuildContext context, String labelText) {
    return InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColorLight),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).accentColor),
        ),
        labelText: labelText,
        labelStyle:
        TextStyle(color: Theme.of(context).accentColor, fontSize: 20));
  }
}