import 'package:flutter/material.dart';

class dismissible extends StatefulWidget {
  final Widget child;

  dismissible({Key? key, required this.child}) : super(key: key);

  @override
  _dismissibleState createState() => _dismissibleState();
}

class _dismissibleState extends State<dismissible> {
  Widget makeDismissible({required Widget child}) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {},
          child: child,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return makeDismissible(
      child: widget.child,
    );
  }
}
