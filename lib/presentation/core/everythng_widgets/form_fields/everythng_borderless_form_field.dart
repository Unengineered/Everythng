import 'package:everythng/constants/extended_text_theme.dart';
import 'package:everythng/constants/extended_theme_data.dart';
import 'package:everythng/constants/extensions.dart';
import 'package:flutter/material.dart';

enum FormFieldType { email, password }

class EverythngBorderlessFormField extends StatefulWidget {
  const EverythngBorderlessFormField({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.textEditingController,
    required this.type, this.validator,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController textEditingController;
  final FormFieldType type;
  final String? Function(String? value)? validator;

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
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.disabled,
        // autofocus: true,
        obscuringCharacter: '*',
        controller: widget.textEditingController,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: everythngThemeData.primaryColor,
        style: everythngTextTheme.headline3!,
        cursorWidth: 3,
        obscureText: widget.type == FormFieldType.password ? obscure : false,
        decoration: InputDecoration(
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
          hintText: widget.type == FormFieldType.email ? 'abc@everythng.com' : '*************',
          hintStyle: everythngTextTheme.headline3!.copyWith(
            color: everythngThemeData.textAndIconography!['disabled'],
          ),
          border: InputBorder.none,
        ),

      ),
    );
  }
}
