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
                numberofindex: 1,
                category: 'Food',
                itemsCount: '2 items',
                orderNumber: '162432',
                price: '35.25',
                restaurantName: 'Pizza Hut',
              ),
              SizedBox(height: 20),
              ProductTrackCard(
                numberofindex: 1,
                category: 'Desserts',
                itemsCount: '5 items',
                orderNumber: '#242432',
                price: '40.15',
                restaurantName: 'McDonald\'s',
              ),
              SizedBox(height: 20),
              ProductTrackCard(
                numberofindex: 1,
                category: 'Drinks',
                itemsCount: '3 items',
                orderNumber: '#947432',
                price: '10.25',
                restaurantName: 'Starbucks',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
