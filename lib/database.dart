import 'package:first_firebase_project/firebase_manager.dart';
import 'package:first_firebase_project/product.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  FirebaseManager firestoreInstance = FirebaseManager.firebaseManager;
  Database._();
  static final database = Database._();
  Future<List<Product>> fetchProducts() async {
    return firestoreInstance.products.get().then((value) async {
      if (value.docs.isEmpty) {
        return [];
      }
      print("Data testing " + value.docs.length.toString());

      return value.docs
          .map(
            (e) => e.data(),
          )
          .toList() as Future<List<Product>>;
    });
  }
}
