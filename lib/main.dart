import 'package:admin_ecommerce/screens/admin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:admin_ecommerce/providers/app_states.dart';
import 'package:admin_ecommerce/providers/products_provider.dart';
import 'package:admin_ecommerce/screens/admin.dart';
import 'package:admin_ecommerce/screens/dashboard.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: AppState()),
      ChangeNotifierProvider.value(value: ProductProvider()),

    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    ),
  ));
}