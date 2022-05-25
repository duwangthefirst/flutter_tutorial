import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("UnknownPage"),
      ),
      body: const Center(
        child: Text("路由错误"),
      ),
    );
  }
}