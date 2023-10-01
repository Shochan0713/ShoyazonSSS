import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoryRegistrationScreen(),
    );
  }
}

class CategoryRegistrationScreen extends StatefulWidget {
  const CategoryRegistrationScreen({super.key});

  @override
  State<CategoryRegistrationScreen> createState() =>
      _CategoryRegistrationScreenState();
}

class _CategoryRegistrationScreenState
    extends State<CategoryRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 1, 62, 111),
                width: 2.0,
              ),
              color: Color.fromARGB(255, 249, 247, 247),
            ),
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 46, 8, 8),
                      width: 1.0,
                    ),
                  ),
                  padding: EdgeInsets.all(2.0),
                  child: Text('カテゴリーを選択'),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green, // 別の色を設定
                      width: 1.0,
                    ),
                  ),
                  padding: EdgeInsets.all(2.0),
                  child: Text('別のコンテナ'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
