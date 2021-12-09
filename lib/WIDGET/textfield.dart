import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:sizer/sizer.dart';

class textfield extends StatelessWidget {
  final TextInputType textInputType;
  final String hintText;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final bool obscureText;
  final TextEditingController controller;
  final Function functionValidate;
  final String parametersValidate;
  final int textlength;
  final TextCapitalization textcapitalization;

  const textfield({
    this.textInputType,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.controller,
    this.functionValidate,
    this.parametersValidate,
    this.textlength,
    this.textcapitalization,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 00.0),
      child: TextFormField(
        cursorColor: primaryRed,
        maxLines: 1,
        keyboardType: textInputType,
        style: TextStyle(fontFamily: "GlacialIndifference", color: cBlack, fontSize: medium),
        obscureText: obscureText,
        controller: controller,
        textCapitalization: textcapitalization,
        maxLength: textlength,
        // inputFormatters: [FilteringTextInputFormatter.deny(new RegExp(r" "))],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: cwhite, width: 1)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: cwhite, width: 1)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: cwhite,
              width: 1.0,
            ),
          ),
          fillColor: grayInput,
          filled: true,
          hintStyle: TextStyle(
              color: Colors.grey,
              fontFamily: "GlacialIndifference",
              fontSize: small),
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          counterText: "",
        ),
        validator: (value) {
          if (functionValidate != null) {
            String resultValidate = functionValidate(value, parametersValidate);
            if (resultValidate != null) {
              return resultValidate;
            }
          }
          return null;
        },
      ),
    );
  }
}

String commonValidation(String value, String messageError) {
  var required = requiredValidator(value, messageError);
  if (required != null) {
    return required;
  }
  return null;
}

String requiredValidator(value, messageError) {
  if (value.isEmpty) {
    return messageError;
  }
  return null;
}
