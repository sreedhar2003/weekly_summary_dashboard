import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weekly_summary_dashboard/helpers/appcolors.dart';
import 'package:weekly_summary_dashboard/helpers/size_extensions.dart';
import 'package:weekly_summary_dashboard/screen/weekly_summary_dashboard/controller/weekly_summary_controller.dart';

class ExpandedCard extends StatefulWidget {
  final String day;
  final String exercise;
  const ExpandedCard({super.key, required this.day, required this.exercise});

  @override
  State<ExpandedCard> createState() => _ExpandedCardState();
}

class _ExpandedCardState extends State<ExpandedCard> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<WeeklySummaryController>();
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () =>
                setState(() => provider.isExpanded = !provider.isExpanded),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: ListTile(
                title: Text(
                  widget.day,
                  style: GoogleFonts.roboto(
                    color: AppColors.green,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  "Exercise: ${widget.exercise}",
                  style: GoogleFonts.roboto(
                    color: AppColors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Icon(
                  provider.isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
          if (provider.isExpanded)
            Container(
              margin: const EdgeInsets.only(top: 8),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  buildInfoRow("Steps", "2,871", "assets/images/footprint.png"),
                  buildDivider(),
                  buildInfoRow("Sleep", "5.4 hrs", "assets/images/sleep.png"),
                  buildDivider(),
                  buildInfoRow(
                      "Water", "4 glasses", "assets/images/water_glass.png"),
                  buildDivider(),
                  buildInfoRow("Mood", "Tired", "assets/images/suffering.png"),
                  buildDivider(),
                  buildInfoRow(
                      "Mindfulness", "Yes", "assets/images/mindfulness.png"),
                  buildDivider(),
                  buildInfoRow("Cravings", "Salty", "assets/images/dinner.png"),
                ],
              ),
            )
        ],
      ),
    );
  }

  Widget buildInfoRow(String title, String value, String image) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: "$title : ",
                  style: GoogleFonts.roboto(
                    color: AppColors.grey,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )),
              TextSpan(
                  text: value,
                  style: GoogleFonts.roboto(
                    color: AppColors.grey,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
        ),
        Image.asset(
          image,
          height: 24,
          width: 24,
          fit: BoxFit.cover,
        )
      ],
    );
  }

  Widget buildDivider() {
    return const Divider(color: AppColors.lightgreen);
  }
}
