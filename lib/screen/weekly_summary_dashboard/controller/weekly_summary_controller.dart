import 'package:flutter/material.dart';
import 'package:weekly_summary_dashboard/helpers/appcolors.dart';

class WeeklySummaryController with ChangeNotifier {
  final dataMap = <String, double>{
    "Workout : 1": 1,
    "Other 1": 1,
    "Other 2": 1,
    "Other 3": 1,
    "Other 4": 1,
  };

  final colorList = <Color>[
    AppColors.lightgreen,
    AppColors.grey,
    AppColors.lightgrey,
    AppColors.percentagebg,
    AppColors.green,
  ];

  List<Map<String, dynamic>> exerciselist = [
    {
      "subject": "Cycling",
      "color": AppColors.green,
    },
    {
      "subject": "Yoga",
      "color": AppColors.lightgreen,
    },
    {
      "subject": "Running",
      "color": AppColors.grey,
    },
    {
      "subject": "Walking",
      "color": AppColors.lightgrey,
    },
    {
      "subject": "Workout",
      "color": AppColors.percentagebg,
    },
  ];
  List<Map<String, dynamic>> cravinglist = [
    {
      "subject": "Spicy",
      "time": "4 times",
    },
    {
      "subject": "Salty",
      "time": "1 time",
    },
    {
      "subject": "Sweet",
      "time": "1 time",
    },
  ];
  List<Map<String, dynamic>> dayslist = [
    {
      "days": "MONDAY",
      "exercise": "Cycling for 32 mins",
    },
    {
      "days": "TUESDAY",
      "exercise": "Yoga for 40 mins",
    },
    {
      "days": "WEDNESDAY",
      "exercise": "Running for 20 mins",
    },
    {
      "days": "THURSDAY",
      "exercise": "Yoga for 19 mins",
    },
    {
      "days": "FRIDAY",
      "exercise": "Walking for 61 mins",
    },
    {
      "days": "SATURDAY",
      "exercise": "Workout for 61 mins",
    },
    {
      "days": "SUNDAY",
      "exercise": "Cycling for 42 mins",
    },
  ];
  bool isExpanded = false;

  // steps graph
  final List<int> steps = [7000, 10000, 8000, 6000, 9500, 7500, 6200];
  final List<String> days1 = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  // mood graph
  final List<double> values = [5, 4, 3, 2, 4, 3, 3];
  final List<String> days2 = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
}
