import 'dart:async';

import 'package:caranger/stores/api_store.dart';
import 'package:flutter/material.dart';

class ApiCallWidget<T> extends StatefulWidget {
  final Future<T> call;
  final Widget Function(BuildContext context, T data) builder;
  final T initialData;
  final Widget placeholder;
  final Widget error;

  ApiCallWidget({
    this.call,
    this.builder,
    this.initialData,
    this.placeholder,
    this.error,
    Key key,
  }) : super(key: key);

  @override
  _ApiCallWidgetState<T> createState() => _ApiCallWidgetState();
}

class _ApiCallWidgetState<T> extends State<ApiCallWidget> {
  StreamController<T> _streamController;

  @override
  void initState() {
    super.initState();
    _streamController = StreamController();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ApiStore.loadingRequest(context, widget.call).then((data) {
        _streamController.add(data);
      }).catchError((e) {
        _streamController.addError(e);
      });
    });
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _streamController.stream,
        initialData: widget.initialData,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return widget.error ?? Container();
          }

          if (!snapshot.hasData) {
            return widget.placeholder ?? Container();
          }

          return widget.builder(context, snapshot.data);
        });
  }
}
