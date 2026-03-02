import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.description,
            labelStyle: TextStyles.body3.copyWith(fontSize: 14.sp),
            unselectedLabelStyle: TextStyles.body3.copyWith(fontSize: 14.sp),
            tabs: const [
              Tab(child: Text("Ongoing")),
              Tab(child: Text("History")),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: CustomBackButton(backgroundColor: AppColors.iceBlue),
          title: Text("My Orders", style: TextStyles.body2.copyWith(fontSize: 18.sp)),
          actions: [
            ContainerButton(
              color: AppColors.iceBlue,
              onTap: () {},
              child: Icon(Icons.more_horiz, color: Colors.black, size: 20.sp),
            ),

            SizedBox(width: 16.w),
          ],
        ),
        body: const TabBarView(children: [OngoingScreen(), HistoryScreen()]),
      ),
    );
  }
}
