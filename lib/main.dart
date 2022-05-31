import 'package:flutter/material.dart';
import 'package:squadapp/views/home.dart';
import 'package:squadapp/widgets/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kDarkColor,
        primaryColor: kPrimaryColor,
      ),
      home: const HomePage(),
    );
  }
}
