import 'package:flutter/material.dart';

import 'constants.dart';
import 'language.dart';
import 'main_screen_body.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      //body: Body(),
    ),
  ),
  );
  FlutterNativeSplash.remove();
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kdefaultPaddin),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LanguageScreen(),
              ),
            );
          },
          child: SizedBox(
            height: 20,
            width: 20,
            child: Image.asset("assets/icons/setting_icon.png"),
          ),
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: Text("LIL' SIKHS DAILY PRAYER"),
    actions: [
      SizedBox(
        height: 20,
        width: 20,
        child: Image.asset("assets/icons/message_icon.png"),
      ),
      Settings(),
    ],
  );
}
