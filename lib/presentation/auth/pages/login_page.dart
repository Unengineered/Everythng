// ignore_for_file: prefer_const_constructors

import 'package:everythng/constants/extensions.dart';
import 'package:everythng/presentation/auth/pages/create_password_page.dart';
import 'package:everythng/presentation/auth/pages/password_page.dart';
import 'package:everythng/presentation/core/everythng_widgets/buttons/everythng_two_state_button.dart';
import 'package:everythng/presentation/core/everythng_widgets/form_fields/everythng_borderless_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final emailEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var everythngTextTheme = Theme.of(context).textTheme.everythngTextTheme;

    return KeyboardDismissOnTap(
      child: KeyboardVisibilityBuilder(
        builder: (context, visible) {
          return Scaffold(
            body: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              margin: EdgeInsets.fromLTRB(
                16,
                148,
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
                        'enter your email',
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
                        textEditingController: emailEditingController,
                        type: FormFieldType.email,
                      ),
                    ],
                  ),
                  Center(
                    child: EverythngTwoStateButton(
                      textController: emailEditingController,
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return CreatePasswordPage();
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
