import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const DefaultButton({Key key, this.text, this.onPressed}) : super();

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        height: 60.0,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(50.0)),
          onPressed: () {
            onPressed();
          },
          color: Theme.of(context).accentColor,
          child: Text(
            text,
            style: TextStyle(color: Theme.of(context).primaryColorDark),
          ),
        ));
  }
}