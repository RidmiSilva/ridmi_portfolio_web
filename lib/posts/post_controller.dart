import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:ridmi_portfolio_web/posts/post_module_cstom.dart';


class PostController extends GetxController {
  var postModelCstom = <PostModelCstom>[
    PostModelCstom(),
    PostModelCstom(),
    PostModelCstom()
  ].obs;

  Future<bool> getFirebaseDb(String id) async {
    try {
      await FirebaseFirestore.instance
          .collection("posts")
          .doc(id)
          .get()
          .then((value) {
        var doc = PostModelCstom.fromMap(value.data() as Map<String, dynamic>);
        postModelCstom[int.parse(id) - 1] = doc;

        log(doc.toString());
      });
      update();
    } catch (e) {
      log(e.toString());
    }

    return true;
  }
}