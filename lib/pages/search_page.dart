import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            contentPadding: const EdgeInsets.all(10),
            hintText: 'Search',
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            fillColor: const Color.fromRGBO(220, 220, 220, 1),
            filled: true,
          ),
        ),

      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
        itemBuilder: (_, index) {
          return Container(
            color: Colors.grey.withOpacity(.5),
          );
        },
        itemCount: 12,
      ),
    );
  }
}
