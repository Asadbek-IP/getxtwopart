import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtwopart/controller/home_controller.dart';

import 'create_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<HomeController>().getApi(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => CreatePage())));
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(),
        body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: ((controller) => controller.isLoading
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: controller.posts.length,
                  itemBuilder: ((context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.posts[index].title!,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(controller.posts[index].body!),
                          ],
                        ),
                      )),
                )),
        ));
  }
}
