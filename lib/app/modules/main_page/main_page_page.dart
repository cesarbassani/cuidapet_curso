import 'package:flutter/material.dart';

class MainPagePage extends StatelessWidget {

  MainPagePage() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print('Rodou o callback');
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Construindo a página');
    return Scaffold(
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
