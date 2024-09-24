import 'package:corp3/components/item_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/anchor.PNG', height: 30,)
        ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return const ItemList();
        },
      ),
    );
  }
}