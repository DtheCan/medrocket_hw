import 'package:flutter/material.dart';

class LinkedPage extends StatefulWidget {
  const LinkedPage({super.key});

  @override
  State<LinkedPage> createState() => _LinkedPageState();
}

class _LinkedPageState extends State<LinkedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Страница с ссылкой на сайт Medrocket",
        ), // Исправлена опечатка
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("https://medrocket.me/", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("Типо мы зашли на ваш сайт)))");
              },
              child: Text("Перейти на сайт"),
            ),
          ],
        ),
      ),
    );
  }
}
