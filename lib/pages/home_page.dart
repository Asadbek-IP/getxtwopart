import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtwopart/controller/home_controller.dart';

import 'create_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => CreatePage())));
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: Get.find<HomeController>().posts.length,
        itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Get.find<HomeController>().posts[index].title!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(Get.find<HomeController>().posts[index].body!),
                ],
              ),
            )),
      ),
    );
  }
}
