import 'package:flutter/material.dart';
import 'package:flutter_test_app/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String assetName,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : assert(assetName != null),
        assert(text != null),
  super(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              Text(text, style: TextStyle(fontSize: 15, color: textColor),),
              Opacity(
                child: Image.asset(assetName),
                opacity: 0,
              ),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
