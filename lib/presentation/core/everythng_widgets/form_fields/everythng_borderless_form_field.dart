import 'package:everythng/constants/extended_text_theme.dart';
import 'package:everythng/constants/extended_theme_data.dart';
import 'package:everythng/constants/extensions/extension_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum FormFieldType { normal, password, phoneNumber }

class EverythngBorderlessFormField extends StatefulWidget {
  const EverythngBorderlessFormField({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.controller,
    required this.type,
    required this.hintText,
    this.validator,
    this.onChanged,
    this.enabled,
    this.textInputAction = TextInputAction.done,
    this.onEditingComplete,
  })
      : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController controller;
  final String hintText;
  final FormFieldType type;
  final String? Function(String? value)? validator;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final bool? enabled;
  final TextInputAction textInputAction;

  @override
  State<EverythngBorderlessFormField> createState() =>
      _EverythngBorderlessFormFieldState();
}

class _EverythngBorderlessFormFieldState
    extends State<EverythngBorderlessFormField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {

    return Form(
      key: widget._formKey,
      child: TextFormField(
        onEditingComplete: widget.onEditingComplete,
        textInputAction: widget.textInputAction,
        keyboardType: widget.type == FormFieldType.phoneNumber
            ? TextInputType.phone
            : TextInputType.text,
        enabled: widget.enabled,
        onChanged: widget.onChanged,
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.disabled,
        // autofocus: true,
        obscuringCharacter: '*',
        controller: widget.controller,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: context.everythngThemeData.primaryColor,
        style: context.everythngTextTheme.headline3Bold!,
        cursorWidth: 3,
        obscureText: widget.type == FormFieldType.password ? obscure : false,
        decoration: InputDecoration(
          prefixIcon: widget.type == FormFieldType.phoneNumber
              ? SizedBox(
            child: Center(
              widthFactor: 0.0,
              child: Text(
                '+91',
                style: context.everythngTextTheme.headline3Bold!
                    .copyWith(color: Colors.black),
              ),
            ),
          )
              : null,
          suffixIcon: widget.type == FormFieldType.password
              ? IconButton(
            onPressed: () {
              setState(() {
                obscure = !obscure;
              });
            },
            icon: obscure
                ? const Icon(Icons.visibility_off_rounded)
                : const Icon(Icons.visibility_rounded),
            color: context.everythngThemeData.textAndIconography!['disabled'],
          )
              : null,
          hintText: widget.hintText,
          hintStyle: context.everythngTextTheme.headline3Bold!.copyWith(
            color: context.everythngThemeData.textAndIconography!['disabled'],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
