import 'package:flutter/material.dart';
import 'package:flutter_multi_test/presentation/view/page/message_create_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('メッセージを作成する'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MessageCreatePage()));
          },
        ),
      ),
    );
  }
}
