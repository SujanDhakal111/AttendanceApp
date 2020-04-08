import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}
 class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),

          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'asd@gmail.com',
      ),
      validator: (String value) {
        if (!value.contains('@')) {
          return 'please enter a valid email';
        }
      },
    );

  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      validator: (String value) {
        if (value.length<4) {
          return 'password must be at least 4 characters';
        }
      },
    );

  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit'),
      onPressed: () {
        formKey.currentState.validate();
      },

    );

  }
 }