import 'package:flutter/material.dart';
import 'package:food_app/features/track_order/widgets/product_track_card.dart';

class OngoingScreen extends StatefulWidget {
  const OngoingScreen({super.key});

  @override
  State<OngoingScreen> createState() => _OngoingScreenState();
}

class _OngoingScreenState extends State<OngoingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              ProductTrackCard(
                itemIndex: 0,
                category: 'Food',
                itemsCount: '2 items',
                orderNumber: '162432',
                price: '35.25',
                restaurantName: 'Pizza Hut',
              ),
              SizedBox(height: 20),
              ProductTrackCard(
                itemIndex: 0,
                category: 'Desserts',
                itemsCount: '5 items',
                orderNumber: '#242432',
                price: '40.15',
                restaurantName: 'McDonald\'s',
              ),
              SizedBox(height: 20),
              ProductTrackCard(
                itemIndex: 0,
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
