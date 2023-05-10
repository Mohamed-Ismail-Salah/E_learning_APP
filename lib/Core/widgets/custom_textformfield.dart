import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? ctrl;
  final Widget  ?suffixIcon;
  final Widget  ?prefixIcon;
  final String? hintText;
  final TextInputType? keyboardType;
  final Function? validator;
  final FocusNode? focusNode;
  final Function? onFieldSubmitted;

  const AppTextFormField(
      {Key? key,
      this.ctrl,
      this.hintText,
      this.keyboardType,
      this.onFieldSubmitted,
      this.focusNode,
      this.validator,
        this.suffixIcon, this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: ctrl,
      keyboardType: keyboardType,
      focusNode: focusNode,
      onFieldSubmitted: (value) => onFieldSubmitted!(value),
      validator: (input) => validator!(input),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
          prefixIcon:prefixIcon ,
          hintText: hintText,
          label: Text(hintText.toString()),
          hintStyle: const TextStyle(color: Colors.grey),
          labelStyle: const TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey))),
    );
  }
}
