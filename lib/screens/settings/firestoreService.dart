import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/settings/newNotification.dart';

final CollectionReference myCollection = Firestore.instance.collection('Notifications');

class FirestoreService {


  Future<NewNotification> createNotification(String title, String message ) async {
    final TransactionHandler createTransaction = (Transaction tx) async {
      final DocumentSnapshot ds = await tx.get(myCollection.document());

      final NewNotification task = new NewNotification(title,message,);
      final Map<String, dynamic> data = task.toMap();
      await tx.set(ds.reference, data);
      return data;
    };

    return Firestore.instance.runTransaction(createTransaction).then((mapData) {
      return NewNotification.fromMap(mapData);
    }).catchError((error) {
      print('error: $error');
      return null;
    });
  }

  Stream<QuerySnapshot> getNotificationList({int offset, int limit}) {
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