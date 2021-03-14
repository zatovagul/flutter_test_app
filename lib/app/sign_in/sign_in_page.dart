import 'package:flutter/material.dart';
import 'package:flutter_test_app/app/sign_in/sign_in_button.dart';
import 'package:flutter_test_app/app/sign_in/social_sign_in_button.dart';
import 'package:flutter_test_app/common_widgets/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Tracker"),
        elevation: 2,
      ),
      backgroundColor: Colors.grey[200],
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 48,
          ),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: "Sign in with Google",
            color: Colors.white,
            textColor: Colors.black,
            onPressed: () {},
          ),
          SizedBox(
            height: 8,
          ),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: "Sign in with Facebook",
            color: Color(0xFF334D92),
            textColor: Colors.white,
            onPressed: () {},
          ),
          SizedBox(
            height: 8,
          ),
          SignInButton(
            text: "Sign in with email",
            color: Colors.teal[700],
            textColor: Colors.white,
            onPressed: () {},
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'or',
            style: TextStyle(fontSize: 14, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          SignInButton(
            text: "Go anonymous",
            color: Colors.lime[300],
            textColor: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
