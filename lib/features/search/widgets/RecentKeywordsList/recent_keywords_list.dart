import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/features/search/widgets/RecentKeywordsList/build_keyword_chip.dart';

class RecentKeywordsList extends StatefulWidget {
  const RecentKeywordsList({super.key});

  @override
  State<RecentKeywordsList> createState() => _RecentKeywordsListState();
}

class _RecentKeywordsListState extends State<RecentKeywordsList> {
  int _selectedIndex = 0;
  final List<String> _keywords = [
    "Burger",
    "Sandwich",
    "Pizza",
    "Sandwich",
    "Drink",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _keywords.length,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        itemBuilder: (context, index) {
          return KeywordChip(
            keyword: _keywords[index],
            isSelected: _selectedIndex == index,
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
