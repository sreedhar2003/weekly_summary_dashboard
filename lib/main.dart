import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly_summary_dashboard/screen/weekly_summary_dashboard/controller/weekly_summary_controller.dart';
import 'package:weekly_summary_dashboard/screen/weekly_summary_dashboard/screens/weekly_summary_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => WeeklySummaryController(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeeklySummaryScreen(),
    );
  }
}
