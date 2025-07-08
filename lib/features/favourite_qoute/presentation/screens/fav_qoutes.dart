import 'package:flutter/material.dart';

class FavouriteQoutesScreen extends StatefulWidget {
  const FavouriteQoutesScreen({super.key});

  @override
  State<FavouriteQoutesScreen> createState() => _FavouriteQoutesScreenState();
}

class _FavouriteQoutesScreenState extends State<FavouriteQoutesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Favourite Qoutes',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
