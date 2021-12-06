import 'package:everythng/constants/extended_text_theme.dart';
import 'package:everythng/constants/extended_theme_data.dart';
import 'package:everythng/constants/extensions.dart';
import 'package:flutter/material.dart';

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
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController controller;
  final String hintText;
  final FormFieldType type;
  final String? Function(String? value)? validator;
  final void Function(String)? onChanged;
  final bool? enabled;

  @override
  State<EverythngBorderlessFormField> createState() =>
      _EverythngBorderlessFormFieldState();
}

class _EverythngBorderlessFormFieldState
    extends State<EverythngBorderlessFormField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    final ExtendedThemeData everythngThemeData =
        Theme.of(context).everythngThemeData;
    final ExtendedTextTheme everythngTextTheme =
        Theme.of(context).textTheme.everythngTextTheme;

    return Form(
      key: widget._formKey,
      child: TextFormField(
        enabled: widget.enabled,
        onChanged: widget.onChanged,
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.disabled,
        // autofocus: true,
        obscuringCharacter: '*',
        controller: widget.controller,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: everythngThemeData.primaryColor,
        style: everythngTextTheme.headline3Bold!,
        cursorWidth: 3,
        obscureText: widget.type == FormFieldType.password ? obscure : false,
        decoration: InputDecoration(
          prefixStyle: everythngTextTheme.headline3Bold!.copyWith(color: Colors.black) ,
          prefix: widget.type == FormFieldType.phoneNumber
              ? const Text(
                  '+91',
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
                  color: everythngThemeData.textAndIconography!['disabled'],
                )
              : null,
          hintText: widget.hintText,
          hintStyle: everythngTextTheme.headline3Bold!.copyWith(
            color: everythngThemeData.textAndIconography!['disabled'],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
