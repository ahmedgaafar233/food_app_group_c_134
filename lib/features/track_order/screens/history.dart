import 'package:flutter/material.dart';
import 'package:food_app/features/track_order/widgets/product_track_card.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              ProductTrackCard(
                itemIndex: 1,
                category: 'Food',
                itemsCount: '03 Items',
                orderNumber: '162432',
                price: '35.25',
                restaurantName: 'Pizza Hut',
                status: 'Completed',
              ),
              SizedBox(height: 20),
              ProductTrackCard(
                itemIndex: 1,
                category: 'Drink',
                itemsCount: '02 Items',
                orderNumber: '242432',
                price: '40.15',
                restaurantName: 'McDonald',
                status: 'Completed',
              ),
              SizedBox(height: 20),
              ProductTrackCard(
                itemIndex: 1,
                category: 'Drink',
                itemsCount: '01 Items',
                orderNumber: '240112',
                price: '10.20',
                restaurantName: 'Starbucks',
                status: 'Canceled',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
