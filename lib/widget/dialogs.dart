import 'package:caranger/widget/default_button.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatelessWidget {
  final VoidCallback onPressed;
  final dynamic title;
  final dynamic text;
  final dynamic buttonText;
  final Widget complement;
  final double widthDialog;

  Dialogs({
    @required this.title,
    @required this.text,
    this.buttonText,
    this.widthDialog,
    this.onPressed,
    this.complement = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          buildHeader(context),
          buildBody(context)
        ],
      ),
    );
  }

  Container buildBody(BuildContext context) {
    var boxDecoration = BoxDecoration(
      color: Theme.of(context).primaryColorDark,
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
    );
    return Container(
      decoration: boxDecoration,
      width: widthDialog,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              (text is String)
                  ? Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  : text,
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: complement,
              ),
              (buttonText is String) ? buildButton(context) : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildButton(BuildContext context) {
    return Container(
      width: widthDialog,
      height: 70,
      child: Center(
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: ButtonTheme(
                height: 30,
                minWidth: 20,
                child: DefaultButton(
                    text: buttonText,
                    onPressed: () {
                      if (onPressed != null) onPressed();
                      Navigator.pop(context);
                    }))),
      ),
    );
  }

  Container buildHeader(BuildContext context) {
    var boxDecoration = BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
    );
    return Container(
      height: 50,
      width: widthDialog,
      decoration: boxDecoration,
      child: Center(
        child: (title is String)
            ? Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )
            : title,
      ),
    );
  }
}
