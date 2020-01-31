import 'package:caranger/stores/loading_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'loading_widget.dart';

class Dialogs {
  waiting(BuildContext context) async{
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        var loadingStore = Provider.of<LoadingStore>(context);
        return BounceAnimation(store: loadingStore, imageSize: 30,);
      });
  }

  dismiss(BuildContext context, Function() action) async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pop(context);
    action();
  }
}