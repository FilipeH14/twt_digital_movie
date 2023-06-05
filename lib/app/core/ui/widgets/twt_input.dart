import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class TwtInput extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final bool isObscure;
  final FormFieldValidator<String>? validator;

  const TwtInput({
    required this.label,
    required this.controller,
    required this.isObscure,
    this.validator,
    super.key,
  });

  @override
  State<TwtInput> createState() => _TwtInputState();
}

class _TwtInputState extends State<TwtInput> {
  late bool secretText;

  @override
  void initState() {
    secretText = widget.isObscure;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: secretText,
      validator: widget.validator,
      decoration: InputDecoration(
        suffixIcon: widget.isObscure
            ? IconButton(
                icon: Icon(
                  secretText ? FeatherIcons.eyeOff : FeatherIcons.eye,
                  color: Colors.grey[700],
                ),
                onPressed: () => setState(() => secretText = !secretText),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(5),
        //   borderSide: const BorderSide(color: Colors.red),
        // ),
        labelText: widget.label,
      ),
    );
  }
}
