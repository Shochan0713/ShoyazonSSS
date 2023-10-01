import 'package:ec_site/Company/Product/category_registration.dart';
import 'package:ec_site/Company/Product/important_items.dart';
import 'package:ec_site/Company/Product/item_information.dart';
import 'package:ec_site/Company/Product/required_items.dart';
import 'package:flutter/material.dart';

class ProductRegistrationDetailScreen extends StatefulWidget {
  const ProductRegistrationDetailScreen({super.key});

  @override
  State<ProductRegistrationDetailScreen> createState() =>
      _ProductRegistrationDetailScreenState();
}

class _ProductRegistrationDetailScreenState
    extends State<ProductRegistrationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // タブの数
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shoyazon Seller Central'),
          backgroundColor: Color.fromARGB(255, 1, 68, 99),
          bottom: TabBar(
            tabs: [
              Tab(text: 'カテゴリー'),
              Tab(text: '必須入力'),
              Tab(text: '重要項目'),
              Tab(text: '商品情報'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoryRegistrationScreen(),
            RequiredItemsScreen(),
            ImportantItemsScreen(),
            ItemInformationScreen()
          ],
        ),
      ),
    );
  }
}
