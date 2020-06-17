import 'package:cuidapetcurso/app/app_controller.dart';
import 'package:cuidapetcurso/app/modules/main_page/main_page_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:cuidapetcurso/app/app_widget.dart';
import 'package:cuidapetcurso/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(
          Modular.initialRoute,
          child: (context, args) => MainPagePage(),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
