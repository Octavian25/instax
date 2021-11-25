import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instax/ui/pages/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: () => MaterialApp(
      title: 'Instax Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
          routes: {
        '/' : (context) => SplashScreen(),
            '/home': (context) => HomePage(),
            '/detailBarang': (context) => DetailBarangPage()
          },
    ));
  }
}