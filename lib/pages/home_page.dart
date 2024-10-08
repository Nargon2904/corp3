import 'package:corp3/components/card.dart';
import 'package:corp3/pages/newrec_page.dart';
import 'package:flutter/material.dart';
import '../models/rec_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Image.network(
          'https://raw.githubusercontent.com/Nargon2904/corp3/refs/heads/main/assets/images/anchor.PNG', 
          width: double.infinity)
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: ListView.builder(
          itemCount: listings.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemList(listing: listings[index],);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewRecPage()),
          )
        },
        tooltip: 'Add new record',
        child: const Icon(Icons.add),
      ),
    );
  }
}