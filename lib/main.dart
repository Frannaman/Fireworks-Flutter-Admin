import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/splase_screen.dart';

import 'Provider/colore_provider.dart';
import 'common_button/scrool_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:  (context) => ColorNotifire(),),
      ],
      child: GetMaterialApp(
        locale: const Locale('en', 'US'),
        translations: AppTranslations(),
        title: "Evalyt",
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Jost-SemiBold',
         useMaterial3: false,
         splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          dividerColor: Colors.transparent,
        ),
        home: const Splase_Screen(),
      ),
    );
  }
}



class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'enter_mail': 'Enter your email',
    },
    'ur_PK': {
      'enter_mail': 'اپنا ای میل درج کریں۔',
    }
  };
}
