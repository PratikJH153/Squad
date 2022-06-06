import 'package:flutter/material.dart';
import 'package:squadapp/views/screens/chat_page.dart';
import 'package:squadapp/views/screens/home.dart';
import 'package:squadapp/views/widgets/constants.dart';

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
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (_) => const HomePage(),
        ChatPage.id: (_) => ChatPage(),
      },
    );
  }
}
