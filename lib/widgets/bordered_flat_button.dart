import 'package:flutter/material.dart';

class BorderedFlatButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double width;
  final double height;

  const BorderedFlatButton({
    Key key,
    @required this.title,
    @required this.onTap,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FlatButton(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
      ),
    );
  }
}
