import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/widgets/container_button.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/features/track_order/screens/history.dart';
import 'package:food_app/features/track_order/screens/ongoing.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          
          bottom: TabBar(
            indicatorColor: AppColors.primary,
            labelStyle: TextStyles.body3.copyWith(color: AppColors.primary),
            labelColor: AppColors.primary,

            tabs: [
              Tab(
                child: Text(
                  "Ongoing",
                  style: TextStyles.body3.copyWith(
                    color: AppColors.description,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "History",
                  style: TextStyles.body3.copyWith(
                    color: AppColors.description,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: CustomBackButton(backgroundColor: AppColors.iceBlue),
          title: Text("My Orders", style: TextStyles.body2),
          actions: [
            ContainerButton(
              color: AppColors.iceBlue,
              onTap: () {},
              child: const Center(
                child: Icon(Icons.more_horiz, color: Colors.black, size: 20),
              ),
            ),

            SizedBox(width: 16),
          ],
        ),
        body: const TabBarView(children: [OngoingScreen(), HistoryScreen()]),
      ),
    );
  }
}
