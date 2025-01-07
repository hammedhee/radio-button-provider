import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radioprvider/controller/radioButtonProvider.dart';
import 'package:radioprvider/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Radiobuttonprovider(),
        )
      ],
      child: MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
