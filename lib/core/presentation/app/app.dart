import 'package:flutter/material.dart';
import 'package:geek_squad_atm_service/core/routes/pages.dart';
import 'package:geek_squad_atm_service/core/routes/routes.dart';
import 'package:get/get.dart';

import '../../../api/service.dart';

const Color primaryColor = Color(0xFF2A8CD5);

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    SpeakService.speak(
        "assets/English/geek_squad_atm_service_has_been_started.mp3");
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.none,
      child: GetMaterialApp(
        title: "Geek Squad -- ATM Service",
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: primaryColor,
        ),
        debugShowCheckedModeBanner: false,
        getPages: Routes.routes,
        initialRoute: Pages.SPLASH_SCREEN,
      ),
    );
  }
}
