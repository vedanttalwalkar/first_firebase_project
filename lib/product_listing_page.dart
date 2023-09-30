import 'package:first_firebase_project/database/database.dart';
import 'package:first_firebase_project/product.dart';
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
      appBar: AppBar(
        title: const Text('EasyBuy'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          FutureBuilder<List<Product>>(
              future: Database.database.fetchProducts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Icon(
                      Icons.error,
                      size: 300,
                    ),
                  );
                } else {
                  return SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                              trailing: IconButton(
                                  onPressed: () {}, icon: const Icon(Icons.add)),
                              subtitle:
                                  Text('₹. ${snapshot.data![index].price}'),
                              title: Text(
                                snapshot.data![index].name,
                              ));
                        }),
                  );
                }
              })
        ],
      ),
    );
  }
}
