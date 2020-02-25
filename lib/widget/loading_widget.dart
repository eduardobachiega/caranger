import 'package:caranger/stores/loading_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LogoImageView extends StatelessWidget {
  const LogoImageView({
    Key key,
    @required this.imageSize
  }) : super(key: key);

  final double imageSize;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('logo.png'),
      height: imageSize,
      width: imageSize,
    );
  }
}

class BounceAnimation extends StatefulWidget {
  const BounceAnimation({
    Key key,
    @required this.imageSize,
    @required this.store
  }) : super(key: key);

  final LoadingStore store;
  final double imageSize;

  @override
  _BounceAnimationState createState() => _BounceAnimationState();
}

class _BounceAnimationState extends State<BounceAnimation>
    with SingleTickerProviderStateMixin {

  AnimationController _animationController;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
      widget.store.adjustScale(_animationController.value);
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
    return Center(
      child: Observer(
          builder: (_) => Transform.scale(
              scale: widget.store.scale,
              child: LogoImageView(imageSize: widget.imageSize)
          )
      ),
    );
  }

}