import 'package:flutter/material.dart';

class MainPagePage extends StatelessWidget {

  MainPagePage() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset("lib/assets/images/logo.png"),
        ),
      ),
    );
  }
}
