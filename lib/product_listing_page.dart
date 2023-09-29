import 'package:first_firebase_project/database.dart';
import 'package:flutter/material.dart';

class ProductListingPage extends StatefulWidget {
  const ProductListingPage({super.key});

  @override
  State<ProductListingPage> createState() => _ProductListingPageState();
}

class _ProductListingPageState extends State<ProductListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
              future: Database.database.fetchProducts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Icon(Icons.error),
                  );
                } else {
                  return SizedBox(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return ListTile(
                          title: Text(Database.database.products[index].name));
                    }),
                  );
                }
              })
        ],
      ),
    );
  }
}
