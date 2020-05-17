import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/model/shared_state.dart';
import 'package:todoeyflutter/screen/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SharedState>(
      create: (BuildContext context) => SharedState(),
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.bellotaTextTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: TasksScreen(),
      ),
    );
  }
}
