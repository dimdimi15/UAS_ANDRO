import 'package:flutter/material.dart';
import 'package:flutter_application_1/user/autentikasi/login_screen.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SHOP APP ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: Future.delayed(Duration.zero), // Future sementara
        builder: (context, dataSnapshot) {
          return loginScreen(); // Perhatikan bahwa "loginScreen" harus menjadi "LoginScreen" (dengan huruf besar)
        },
      ),
    );
  }
}
