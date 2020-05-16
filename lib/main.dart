import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoeyflutter/screen/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.bellotaTextTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: TasksScreen(),
    );
  }
}
