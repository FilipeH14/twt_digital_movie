import 'package:flutter/material.dart';

class TwtButton extends StatelessWidget {
  final String text;
  final Function()? action;

  const TwtButton({
    required this.text,
    this.action,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: action,
        child: Text(text),
      ),
    );
  }
}
