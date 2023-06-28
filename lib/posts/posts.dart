import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'post_controller.dart';
import 'package:ridmi_portfolio_web/posts/post_module_cstom.dart';
import 'package:ridmi_portfolio_web/blog/blog.dart';

class posts extends StatefulWidget {
  const posts( {Key? key}) : super(key: key);

  @override
  State<posts> createState() => _postsState();
}

class _postsState extends State<posts> {
  var postController = Get.put(PostController());

  @override
  void initState() {
    super.initState();
    postController.getFirebaseDb("1");
    postController.getFirebaseDb("2");
    postController.getFirebaseDb("3");
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        appBar: AppBar(
          backgroundColor:   Color(0xFFBE5E7D),
          title: const Text(
            'My blog',
            style: TextStyle(
                fontFamily: "DancingScript",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF413D3D)),
          ),
        ),
        body: Row(
          children: [
            Center(
              child: Column(
                children: [
                  Text(postController.postModelCstom[0].title ?? ""),
              Image.network(
                              postController.postModelCstom[0].mainImage ?? "",
                             ),
                  Text(postController.postModelCstom[1].paragarphs ?? ""),

                ],
              ),
            )
          ],
        ),
        // body: Column(
        //   children: [
        //     Center(
        //         child: Column(
        //           children: [
        //             Text(postController.postModelCstom[0].title ?? ""),
        //             Image.network(
        //               postController.postModelCstom[0].mainImage ?? "",
        //             ),
        //             Text(postController.postModelCstom[0].paragarphs ?? ""),
        //           ],
        //         )),
        //     Center(
        //         child: Column(
        //           children: [
        //             Text(postController.postModelCstom[1].title ?? ""),
        //             Image.network(
        //               postController.postModelCstom[1].mainImage ?? "",
        //
        //             ),
        //             Text( postController.postModelCstom[1].paragarphs ?? ""),
        //           ],
        //         )),
        //     Center(
        //         child: Column(
        //           children: [
        //             Text(postController.postModelCstom[2].title ?? ""),
        //             Image.network(
        //               postController.postModelCstom[2].mainImage ?? "",
        //             ),
        //             Text(postController.postModelCstom[2].paragarphs ?? ""),
        //           ],
        //         )),
        //   ],
        // ),
      ),
    );
  }
}
