import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';
import 'package:weekly_summary_dashboard/helpers/appcolors.dart';
import 'package:weekly_summary_dashboard/helpers/screen_config.dart';
import 'package:weekly_summary_dashboard/helpers/size_extensions.dart';
import 'package:weekly_summary_dashboard/helpers/sizedbox.dart';
import 'package:weekly_summary_dashboard/screen/weekly_summary_dashboard/controller/weekly_summary_controller.dart';
import 'package:weekly_summary_dashboard/screen/weekly_summary_dashboard/widgets/expanded_card.dart';
import 'package:weekly_summary_dashboard/screen/weekly_summary_dashboard/widgets/normalpercentage_card.dart';
import 'package:weekly_summary_dashboard/screen/weekly_summary_dashboard/widgets/roundpercentage_card.dart';

class WeeklySummaryScreen extends StatefulWidget {
  const WeeklySummaryScreen({super.key});

  @override
  State<WeeklySummaryScreen> createState() => _WeeklySummaryScreenState();
}

class _WeeklySummaryScreenState extends State<WeeklySummaryScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<WeeklySummaryController>();
    ScreenUtil.getInstance().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: AppColors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Weekly Summary",
            style: GoogleFonts.roboto(
              color: AppColors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "June 9 - June 15 ",
                    style: GoogleFonts.roboto(
                      color: AppColors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images/arrow_left.png",
                    height: 24,
                    width: 24,
                    fit: BoxFit.contain,
                  ),
                  sizedBoxWithWidth(5),
                  Image.asset(
                    "assets/images/arrow_right.png",
                    height: 24,
                    width: 24,
                    fit: BoxFit.contain,
                  )
                ],
              ),
              sizedBoxWithHeight(10),
              Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: RoundpercentageCard(
                        title: "Steps",
                        image: "assets/images/steps_image.png",
                        duration: "47,877",
                        total: "steps",
                        percentage: 0.75,
                        percentagecolor: AppColors.firstcircleindicator),
                  ),
                  sizedBoxWithWidth(10),
                  const Expanded(
                    flex: 1,
                    child: RoundpercentageCard(
                        title: "Active Days",
                        image: "assets/images/flash_logo.png",
                        duration: "7/7",
                        total: "days",
                        percentage: 1.0,
                        percentagecolor: AppColors.green),
                  ),
                ],
              ),
              sizedBoxWithHeight(10),
              Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: NormalpercentageCard(
                        title: "Sleep",
                        image: "assets/images/sleep_image.png",
                        duration: "6.1",
                        total: "hours",
                        percentage: 0.7,
                        percentagecolor: AppColors.darkblue),
                  ),
                  sizedBoxWithWidth(10),
                  const Expanded(
                    flex: 1,
                    child: NormalpercentageCard(
                        title: "Water",
                        image: "assets/images/waterglass_logo.png",
                        duration: "4-6",
                        total: "glasses",
                        percentage: 0.7,
                        percentagecolor: AppColors.lightblue),
                  ),
                ],
              ),
              sizedBoxWithHeight(10),
              Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: NormalpercentageCard(
                        title: "Mood",
                        image: "assets/images/mood_image.png",
                        duration: "3.9/5",
                        total: "",
                        percentage: 0.7,
                        percentagecolor: AppColors.orange),
                  ),
                  sizedBoxWithWidth(10),
                  const Expanded(
                    flex: 1,
                    child: NormalpercentageCard(
                        title: "Mindful Days",
                        image: "assets/images/head_image.png",
                        duration: "2",
                        total: "days",
                        percentage: 1.0,
                        percentagecolor: AppColors.red),
                  ),
                ],
              ),
              sizedBoxWithHeight(10),
              const NormalpercentageCard(
                  title: "Days with cravings",
                  image: "assets/images/fastfood_image.png",
                  duration: "5",
                  total: "days",
                  percentage: 0.8,
                  percentagecolor: AppColors.red),
              sizedBoxWithHeight(20),
              Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  //  change according to

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Daily Steps",
                        style: GoogleFonts.roboto(
                          color: AppColors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Image.asset(
                        "assets/images/graph_image.png",
                        height: 205,
                        width: 313,
                        fit: BoxFit.cover,
                      )
                    ],
                  )),
              sizedBoxWithHeight(20),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Exercise Breakdown",
                        style: GoogleFonts.roboto(
                          color: AppColors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sizedBoxWithHeight(20),
                      Center(
                        child: PieChart(
                          dataMap: provider.dataMap,
                          animationDuration: const Duration(milliseconds: 800),
                          chartRadius: MediaQuery.of(context).size.width / 2.2,
                          colorList: provider.colorList,
                          chartType: ChartType.ring,
                          ringStrokeWidth: 40,
                          legendOptions:
                              const LegendOptions(showLegends: false),
                          chartValuesOptions: const ChartValuesOptions(
                            showChartValues: false,
                          ),
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Column(
                        children: List.generate(
                            provider.exerciselist.length,
                            (index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        provider.exerciselist[index]["subject"],
                                        style: GoogleFonts.roboto(
                                          color: AppColors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                          color: provider.exerciselist[index]
                                              ["color"],
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                      ),
                    ],
                  )),
              sizedBoxWithHeight(20),
              Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  //  change according to

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mood Trend (1:Bad - 5:Great)",
                        style: GoogleFonts.roboto(
                          color: AppColors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sizedBoxWithHeight(20),
                      Image.asset(
                        "assets/images/mood_graph.png",
                        height: 260,
                        width: 313,
                        fit: BoxFit.cover,
                      )
                    ],
                  )),
              sizedBoxWithHeight(20),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mood Trend (1:Bad - 5:Great)",
                      style: GoogleFonts.roboto(
                        color: AppColors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    sizedBoxWithHeight(20),
                    Column(
                      children: List.generate(
                        provider.cravinglist.length,
                        (index) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              provider.cravinglist[index]["subject"],
                              style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              ":",
                              style: GoogleFonts.roboto(
                                color: AppColors.lightgrey,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              provider.cravinglist[index]["time"],
                              style: GoogleFonts.roboto(
                                color: AppColors.green,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              sizedBoxWithHeight(20),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daily Log Overview",
                      style: GoogleFonts.roboto(
                        color: AppColors.green,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    sizedBoxWithHeight(20),
                    Column(
                      children: List.generate(
                        provider.dayslist.length,
                        (index) => ExpandedCard(
                          day: provider.dayslist[index]["days"],
                          exercise: provider.dayslist[index]["exercise"],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              sizedBoxWithHeight(20),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.containercolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/correct_circle.png",
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                    sizedBoxWithWidth(5),
                    Expanded(
                      child: Text(
                        "Review your progress regularly to stay motivated and identify patterns!",
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                          color: AppColors.grey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
