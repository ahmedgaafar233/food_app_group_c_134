import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/features/track_order/widgets/button_collection.dart';

class ProductTrackCard extends StatelessWidget {
  const ProductTrackCard({
    super.key,
    required this.category,
    required this.restaurantName,
    required this.price,
    required this.itemsCount,
    required this.orderNumber,
    required this.itemIndex,
    this.status,
  });
  final String category;
  final String? status;
  // final String imageUrl;
  final String restaurantName;
  final String price;
  final String itemsCount;
  final String orderNumber;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      //motehr of all columns
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(category, style: TextStyles.body3),
            if (status != null) ...[
              SizedBox(width: 40),
              Text(
                status!,
                style: TextStyles.body3.copyWith(
                  color: status!.toLowerCase() == 'completed'
                      ? AppColors.green
                      : status!.toLowerCase() == 'canceled'
                          ? AppColors.red
                          : AppColors.description,
                ),
              ),
            ],
          ],
        ),
        SizedBox(height: 20),
        Column(
          children: [
            Divider(
              color: Colors.grey.shade300, // لون الخط
              thickness: 1, // سمك الخط نفسه
              height: 1, // المساحة اللي الخط واخدها (بالفراغ اللي حوله)
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.description,
                  ),
                  // child: /* image will be here,*/,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(restaurantName, style: TextStyles.body3),
                    Row(
                      children: [
                        Text('\$$price', style: TextStyles.captionB),
                        SizedBox(width: 8),
                        Text(
                          '|',
                          style: TextStyles.caption.copyWith(
                            color: AppColors.dark,
                          ),
                        ),
                        SizedBox(width: 8),

                        Text(
                          itemsCount,
                          style: TextStyles.caption.copyWith(
                            color: AppColors.description,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  '#$orderNumber',
                  style:
                      TextStyles.caption.copyWith(color: AppColors.description),
                ),
              ],
            ),

            SizedBox(height: 25),
            ButtonCollection(index: itemIndex),
          ],
        ),
      ],
    );
  }
}
