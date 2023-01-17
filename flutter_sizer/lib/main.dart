import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Sizer Demo',
          theme: ThemeData.dark(),
          home: const MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Home Page'),
      ),
      body: SafeArea(
        child: Container(
          height: 90.h,
          width: 95.w,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
