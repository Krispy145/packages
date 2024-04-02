// import 'package:firebase_core/firebase_core.dart';
// import 'package:utilities/data_sources/remote/firestore.dart';

// import '_source.dart';

// /// [FirestoreDigitalOasisDataSource] is a class that implements [DigitalOasisDataSource] interface.
// class FirestoreDigitalOasisDataSource<T> extends FirestoreDataSource<T> implements DigitalOasisDataSource<T> {
//   /// [FirestoreDigitalOasisDataSource] constructor.
//   FirestoreDigitalOasisDataSource(
//     super.collectionName, {
//     required super.convertDataTypeFromMap,
//     required super.convertDataTypeToMap,
//   });

//   @override
//   Future<void> initializeApp() async {
//     final app = await Firebase.initializeApp(
//       name: "Digital-Oasis-Dev",
//       options: const FirebaseOptions(
//           apiKey: "AIzaSyCDVkKvU8g2UdwkncxpOXQjid1T26DGKKk",
//           authDomain: "digital-oasis-dev.firebaseapp.com",
//           projectId: "digital-oasis-dev",
//           storageBucket: "digital-oasis-dev.appspot.com",
//           messagingSenderId: "313815683759",
//           appId: "1:313815683759:web:b2f9cc51dba490c2853a5a",
//           measurementId: "G-XP8FJJP323"),
//     );
//     super.app = app;
//   }
// }
