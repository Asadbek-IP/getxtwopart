import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtwopart/controller/home_controller.dart';
import 'package:getxtwopart/controller/home_controller_finalMethod.dart';

import 'create_page.dart';

class FinalMethodPage extends StatefulWidget {
  const FinalMethodPage({super.key});

  @override
  State<FinalMethodPage> createState() => _FinalMethodPageState();
}

class _FinalMethodPageState extends State<FinalMethodPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<FinalMethodController>().getApi(context);
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
        body: GetX<FinalMethodController>(
          init: FinalMethodController(),
          builder: ((controller) => controller.isLoading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
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
