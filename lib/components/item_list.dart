import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(255, 175, 175, 175),
        borderRadius: BorderRadius.circular(16.0),),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.3,
        child: const Center(child: Text('Entry A', 
        style: TextStyle(color: Colors.black, fontSize: 20),)
        ),
      ),
    );
  }
}