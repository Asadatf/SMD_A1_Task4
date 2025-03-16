import 'package:flutter/material.dart';
import 'screens/status_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Status',
      theme: ThemeData(
        primaryColor: const Color(0xFF075E54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF075E54),
          secondary: const Color(0xFF128C7E),
        ),
      ),
      home: const WhatsAppStatusScreen(),
    );
  }
}
