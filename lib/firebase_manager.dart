import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_firebase_project/constants.dart';
import 'package:first_firebase_project/product.dart';

class FirebaseManager {
  final instanceOfFirestore = FirebaseFirestore.instance;
  final constants = Constants.constants;
  late CollectionReference productsInJson;
  late CollectionReference products;
  static final firebaseManager = FirebaseManager._();
  FirebaseManager._() {
    products = instanceOfFirestore
        .collection(constants.products)
        .withConverter<Product>(
          fromFirestore: (snapshot, _) =>
              Product.fromJson(snapshot.data() as Map<String, dynamic>),
          toFirestore: (product, _) => product.toJson(),
        );
  }
}
