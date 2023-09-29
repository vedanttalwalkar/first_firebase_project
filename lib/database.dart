import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_firebase_project/firebase_manager.dart';
import 'package:first_firebase_project/product.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  FirebaseManager firestoreInstance = FirebaseManager.firebaseManager;
  Database._() {}
  List<Product> products = [];
  static final database = Database._();
  Future<void> fetchProducts() async {
    QuerySnapshot querySnapshot = await firestoreInstance.products.get();

    for (var element in querySnapshot.docs) {
      products.add(element.data() as Product);
    }
  }
}
