import 'package:flutter/material.dart';

class AuthTextfieldWidget extends StatelessWidget {
  const AuthTextfieldWidget({
    super.key,
    required TextEditingController textfieldNameController,
    required this.padding,
    required this.labelText,
    required this.hintText,
    required this.textInputType,
    this.prefixIcon,
    this.suffixIcon,  
    this.obscureText,
    this.validator,
  }) : _textfieldNameController = textfieldNameController;

  final TextEditingController _textfieldNameController;
  final EdgeInsets padding;
  final String labelText;
  final String hintText;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final TextInputType textInputType;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        controller: _textfieldNameController,
        textCapitalization: TextCapitalization.characters,
        obscureText: obscureText ?? false,
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
        // forceErrorText: 'Please enter your username',
        validator: validator,
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return 'Please enter your username';
        //   }
        //   return null;
        // },
        onSaved: (value) {},
      ),
    );
  }
}
