import 'package:cuidapetcurso/app/app_controller.dart';
import 'package:cuidapetcurso/app/modules/home/home_module.dart';
import 'package:cuidapetcurso/app/modules/login/login_module.dart';
import 'package:cuidapetcurso/app/modules/main_page/main_page.dart';
import 'package:cuidapetcurso/app/shared/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:cuidapetcurso/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => AuthStore()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (context, args) => MainPage()),
        Router('/home', module: HomeModule()),
        Router('/login', module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
