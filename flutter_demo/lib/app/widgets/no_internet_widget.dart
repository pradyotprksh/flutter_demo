import 'package:flutter/material.dart';
import 'package:flutter_demo/app/app.dart';

/// A widget which will be used to notify the user that there is no internet
/// connection available.
class NoInternetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: Dimens.edgeInsets15_15_15_15,
        child: Center(
          child: Text(
            StringConstants.noInternet,
            style: Styles.oppositeBoldl18,
          ),
        ),
      );
}
