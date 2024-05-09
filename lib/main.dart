import 'package:flutter/material.dart';
import 'package:flutter_ex/src/binding/binding_page.dart';
import 'package:flutter_ex/src/controller/count_controller_with_getx.dart';
import 'package:flutter_ex/src/pages/binding.dart';
import 'package:flutter_ex/src/pages/named/first.dart';
import 'package:flutter_ex/src/pages/named/second.dart';
import 'package:flutter_ex/src/pages/next.dart';
import 'package:get/get.dart';
import 'src/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/first": (context) => FirstNamedPage(),
        "/second": (context) => SecondNamedPage(),
        "/next": (context) => NextPage(),
      },
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/first", page: () => FirstNamedPage()),
        GetPage(name: "/second", page: () => SecondNamedPage()),
        GetPage(name: "/next", page: () => NextPage()),
        GetPage(
            name: "/binding",
            page: () => BindingPage(),
            binding: BindingPageBingding()),
      ],
    );
  }
}
