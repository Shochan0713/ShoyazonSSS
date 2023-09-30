import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class UserRegistrationScreen extends StatefulWidget {
  const UserRegistrationScreen({super.key});

  @override
  State<UserRegistrationScreen> createState() => _UserRegistrationScreen();
}

class _UserRegistrationScreen extends State<UserRegistrationScreen> {
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  String _email = '';
  String _passsword = '';
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoyazon'),
        backgroundColor: Color.fromARGB(255, 0, 71, 104),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 172, 218, 255), Colors.teal],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/icon_user_1.png'),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'ユーザー名',
                  prefixIcon: Icon(Icons.person),
                ),
                onChanged: (String value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'メールアドレス',
                  prefixIcon: Icon(Icons.email),
                ),
                onChanged: (String value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'パスワード',
                  prefixIcon: Icon(Icons.lock),
                ),
                onChanged: (String value) {
                  setState(() {
                    _passsword = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  try {
                    final User? user = (await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: _email, password: _passsword))
                        .user;
                    if (user != null) {
                      print("ユーザー登録しました ${user.email} , ${user.uid}");
                      UserFireStoreDateRegistration().addUserDate(_name);
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => HomeScreen()),
                      ),
                    );
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text('登録'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserFireStoreDateRegistration {
  void addUserDate(String name) async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      CollectionReference users = FirebaseFirestore.instance.collection('User');
      DateTime now = DateTime.now();

      await users.doc(user.uid).set({
        'Uid': user.uid,
        'address': null,
        'birthday_day': null,
        'image_icon': null,
        'name': name,
        'registration_date': now,
      });
    }
  }
}
