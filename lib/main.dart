import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:uber_clone/home.dart';
import 'package:uber_clone/screens/loginpage.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyDkcO01UIRRvWzdcb99HR62-0ra2GsFUIk',
        authDomain: 'react-native-firebase-testing.firebaseapp.com',
        databaseURL: 'https://uber-clone-33688-default-rtdb.firebaseio.com',
        projectId: 'uber-clone-33688',
        storageBucket: 'uber-clone-33688.appspot.com',
        messagingSenderId: '448618578101',
        appId: '1:414658273257:android:6a25bf0fdd5c2b33c8b578',
        measurementId: 'G-0N1G9FLDZE'),
  );
  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Brand-Regular',
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
