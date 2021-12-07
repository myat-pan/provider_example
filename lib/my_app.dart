import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/home_screen.dart';
import 'package:provider_example/provider/text_provider.dart';
import 'package:provider_example/provider/user_provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TextProvider()),
          ChangeNotifierProvider(create: (context) => UserProvider())
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Provider Example'),
          ),
          body: const HomeScreen(),
        ),
      ),
    );
  }
}
