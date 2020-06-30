import 'package:flutter/material.dart';
import 'package:cuidapetcurso/app/app_module.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(ModularApp(module: AppModule()));
}

Future<void> loadEnv() async {
  const isProduction = bool.fromEnvironment('dart.vm.product');
  await DotEnv().load(isProduction ? '.envo' : '.env_dev'); 
}
