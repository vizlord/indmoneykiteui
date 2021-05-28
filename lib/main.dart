import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:indmoneykiteui/provider/theme_provider.dart';
import 'package:indmoneykiteui/screens/HomePage.dart';
import 'package:indmoneykiteui/screens/loginpage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context)  => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      final themeProvider = Provider.of<ThemeProvider>(context);

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        home: LoginScreen(),
        //home: MyHomePage(),
      );
    },
  );
}
