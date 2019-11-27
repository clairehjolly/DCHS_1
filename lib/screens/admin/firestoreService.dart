import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/admin/newAnimal.dart';

final CollectionReference myCollection = Firestore.instance.collection('Animal');

class FirestoreService {


  Future<NewAnimal> createAnimal(String name,String age,String sex,String species,
      String breed, String status, String location, String animalPic, String description,
      String lonelyHearts, String adoptionFee ) async {
    final TransactionHandler createTransaction = (Transaction tx) async {
      final DocumentSnapshot ds = await tx.get(myCollection.document());

      final NewAnimal task = new NewAnimal(name, age,sex,species,breed, status, location, animalPic,
          description, lonelyHearts, adoptionFee);
      final Map<String, dynamic> data = task.toMap();
      await tx.set(ds.reference, data);
      return data;
    };

    return Firestore.instance.runTransaction(createTransaction).then((mapData) {
      return NewAnimal.fromMap(mapData);
    }).catchError((error) {
      print('error: $error');
      return null;
    });
  }

  Stream<QuerySnapshot> getAnimalList({int offset, int limit}) {
    Stream<QuerySnapshot> snapshots = myCollection.snapshots();

    if (offset != null) {
      snapshots = snapshots.skip(offset);
    }
    if (limit != null) {
      snapshots = snapshots.take(limit);
    }
    return snapshots;
  }


}