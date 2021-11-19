// ignore_for_file: prefer_const_constructors

import 'package:everythng/constants/extensions.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/everythng_two_state_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class PasswordPage extends StatelessWidget {
  PasswordPage({Key? key}) : super(key: key);
  final passwordEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;
    var everythngThemeData = Theme.of(context).everythngThemeData;
    return KeyboardDismissOnTap(
      child: KeyboardVisibilityBuilder(
        builder: (context, visible) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              leading: Navigator.canPop(context)
                  ? IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 32,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  : null,
            ),
            body: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: EdgeInsets.fromLTRB(
                16,
                64,
                16,
                visible ? 24 : 48,
              ),
              // color: Colors.black38,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'welcome back,\nenter your password',
                        style: everythngTextTheme.headline1!,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'some gibberish about something blah blah blah',
                        style: everythngTextTheme.bodyTextMedium!,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      EverythngBorderlessFormField(
                        formKey: _formKey,
                        textEditingController: passwordEditingController,
                        type: FormFieldType.password,
                      ),
                    ],
                  ),
                  Center(
                    child: EverythngTwoStateButton(
                      textController: passwordEditingController,
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return PasswordPage();
                            },
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
