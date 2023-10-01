import 'package:ec_site/Authentication/user_registration.dart';
import 'package:ec_site/Company/product_registration.dart';
import 'package:flutter/material.dart';

import '../Authentication/user_login.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoyazon'),
        backgroundColor: Color.fromARGB(255, 0, 71, 104),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('こんにちは！',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              accountEmail: SizedBox(), // 空のSizedBoxを指定してメールアドレス領域を非表示にする
              decoration: BoxDecoration(color: Color.fromARGB(255, 0, 29, 52)),
            ),
            ListTile(
              title: Text('人気・新着商品',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              onTap: () {
                // カテゴリーが選択されたときの処理
                Navigator.pop(context); // Drawerを閉じる
              },
            ),
            ListTile(
              title: Text('ランキング'),
              onTap: () {
                // メニュー項目1が選択されたときの処理
                Navigator.pop(context); // Drawerを閉じる
              },
            ),
            ListTile(
              title: Text('新着商品'),
              onTap: () {
                // メニュー項目2が選択されたときの処理
                Navigator.pop(context); // Drawerを閉じる
              },
            ),
            ListTile(
              title: Text('人気度ランキング'),
              onTap: () {
                // メニュー項目2が選択されたときの処理
                Navigator.pop(context); // Drawerを閉じる
              },
            ),
            ListTile(
              title: Text('アカウント',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              onTap: () {
                // カテゴリーが選択されたときの処理
                Navigator.pop(context); // Drawerを閉じる
              },
            ),
            ListTile(
              title: Text('ユーザー登録'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserRegistrationScreen()));
              },
            ),
            ListTile(
              title: Text('ログイン'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserLoginScreen()));
              },
            ),
            ListTile(
              title: Text('商品登録画面'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ProductRegistrationScreen()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: MyContentWidget(),
      ),
    );
  }
}

class MyContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Shoyazonポイント: 45'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('ヘルプ'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Prime Video'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('ライフ'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Shoyazonで売る'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('DIY・工具'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Amazonファッション'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('ビューティー&パーソナルケア'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('おもちゃ&ホビー'),
                      ),
                    ]),
                  );
                },
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: '検索...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
