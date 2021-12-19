import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_to_form/json_to_form.dart';

class JsonForm extends StatelessWidget {
  String form = json.encode([
    {
      'type': 'Input',
      'title': 'Hi Group',
      'placeholder': "Hi Group flutter",
    },
    {
      'type': 'Password',
      'title': 'Password',
    },
    {'type': 'Email', 'title': 'Email test', 'placeholder': "hola a todos"},
    {
      'type': 'TareaText',
      'title': 'TareaText test',
      'placeholder': "hola a todos"
    },
  ]);
  dynamic response;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            CoreForm(
                form: form,
                onChanged: (dynamic response) {
                  this.response = response;
                }),
            MaterialButton(
              onPressed: () {
                print(this.response.toString());
              },
              child: Text('Show'),
            )
          ],
        ),
      ),
    );
  }
}
