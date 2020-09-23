import 'package:environments_with_code_magic/app_widget.dart';
import 'package:environments_with_code_magic/config_reader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'enviroment.dart';

///Created by Demilade Oladugba on 9/23/2020
Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primaryColor;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.blue;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  }

  runApp(
    Provider.value(
      child: MyApp(),
      value: primaryColor,
    ),
  );
}
