import 'package:ec_site/Company/product_registration_detail.dart';
import 'package:flutter/material.dart';

class ProductRegistrationScreen extends StatefulWidget {
  const ProductRegistrationScreen({super.key});

  @override
  State<ProductRegistrationScreen> createState() =>
      _ProductRegistrationScreen();
}

class _ProductRegistrationScreen extends State<ProductRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoyazon Seller Central'),
        backgroundColor: Color.fromARGB(255, 1, 68, 99),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '商品の登録をする',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            Text(
              'Shoyazonのカタログから商品を登録する',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            TextButton(
                child: Text(
                  '商品登録画面へ',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProductRegistrationDetailScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
