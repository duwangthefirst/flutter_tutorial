import 'package:flutter/material.dart';
import 'package:flutter_tutorial/route/route_name.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              title: const Text("unknown route"),
              leading: const Icon(Icons.tag),
              onTap: ()=>Get.toNamed(RouteName.pageUnknown),
            ),
            ListTile(
              title: const Text("modal bottom sheet"),
              leading: const Icon(Icons.tag),
              onTap: ()=>Get.toNamed(RouteName.pageShowModalBottomSheet),
            ),
          ],
        ),
      ),
    );
  }
}
