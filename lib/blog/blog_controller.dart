import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:ridmi_portfolio_web/blog/user_model_cstom.dart';

class BlogController extends GetxController {
  var userModelCstom = <UserModelCstom>[
    UserModelCstom(),
    UserModelCstom(),
    UserModelCstom(),
  ].obs;

  Future<bool> getFirebaseDb(String id) async {
    try {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(id)
          .get()
          .then((value) {
        var doc = UserModelCstom.fromMap(value.data() as Map<String, dynamic>);
        userModelCstom[int.parse(id) - 1] = doc;

        log(doc.toString());
      });
      update();
    } catch (e) {
      log(e.toString());
    }

    return true;
  }
}
