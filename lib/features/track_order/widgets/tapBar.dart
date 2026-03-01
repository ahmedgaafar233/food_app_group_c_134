import 'package:flutter/material.dart';
import 'package:food_app/features/track_order/screens/history.dart';
import 'package:food_app/features/track_order/screens/ongoing.dart';

class CustomSimpleTabBar extends StatefulWidget {
  List<Widget> tabs = [OngoingScreen(), HistoryScreen()];

   CustomSimpleTabBar({super.key});
  @override
  _CustomSimpleTabBarState createState() => _CustomSimpleTabBarState();
}
 @override

class _CustomSimpleTabBarState extends State<CustomSimpleTabBar> {
  // الرقم ده بيحدد التاب اللي شغال أول ما تفتح الصفحة (0 للأول، 1 للتاني)
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // بيخلي البار ياخد عرض الشاشة بالكامل
      decoration: BoxDecoration(
        color: Colors.white, // لون خلفية التاب بار نفسه
        border: Border(
          // الخط الرمادي الرفيع اللي بيفصل التاب بار عن المحتوى اللي تحته
          bottom: BorderSide(
            color: Colors.grey.shade200, // درجة لون الخط الفاصل
            width: 1, // سمك الخط الفاصل (لو زودته هيبان أتقل)
          ),
        ),
      ),
      child: Row(
        children: [
          // هنا بتحدد النصوص اللي مكتوبة في التابات
          _buildTabItem("Ongoing", 0),
          _buildTabItem("History", 1),
        ],
      ),
    );
  }

  Widget _buildTabItem(String title, int index) {
    // متغير بيعرفنا هل التاب ده هو اللي متداس عليه دلوقتي ولا لأ
    bool isSelected = selectedIndex == index;

    return Expanded(
      // بيخلي التابات تتقسم بالتساوي على عرض الشاشة
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index; // الأمر اللي بيغير التاب لما تدوس عليه
          });
        },
        child: AnimatedContainer(
          // سرعة حركة تغيير اللون والخط (300ms يعني تلتمتمية جزء من الثانية)
          duration: Duration(milliseconds: 200),
          // المسافة بين النص والحدود (بتتحكم في طول التاب بار)
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                // لو التاب مختار خليه برتقالي، لو مش مختار خليه شفاف (مخفي)
                color: isSelected ? Colors.orange : Colors.transparent,
                width: 3.0, // سمك الخط البرتقالي اللي بيتحرك
              ),
            ),
          ),
          child: Text(
            title, // النص (Ongoing أو History)
            textAlign: TextAlign.center, // بيخلي النص في نص التاب بالظبط
            style: TextStyle(
              fontSize: 16, // حجم الخط
              fontWeight: FontWeight.w500, // تقل الخط (Medium)
              // لون النص: برتقالي لو شغال، ورمادي لو مش شغال
              color: isSelected ? Colors.orange : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
