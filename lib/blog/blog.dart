import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:ridmi_portfolio_web/posts/posts.dart';
import 'blog_controller.dart';


class blog extends StatefulWidget {
  const blog({Key? key}) : super(key: key);

  @override
  State<blog> createState() => _blogState();
}

class _blogState extends State<blog> {
  var blogController = Get.put(BlogController());

  @override
  void initState() {
    super.initState();
    blogController.getFirebaseDb("1");
    blogController.getFirebaseDb("2");
    blogController.getFirebaseDb("3");
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
        body: GridView(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
              childAspectRatio: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: [
            InkWell(
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    color: Color(0xFFF3C7D7),
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          blogController.userModelCstom[0].heading ?? "",
                          style: const TextStyle(
                            fontFamily: "PatrickHand",
                            fontSize: 50,
                            color: Colors.black26,
                          ),
                        ),
                        Image.network(
                          blogController.userModelCstom[0].coverImage ?? "",
                          height: 70,
                          fit: BoxFit.scaleDown,
                          errorBuilder: (context, error, stackTrace) {
                            return SizedBox();
                          },
                        ),
                        Text(blogController.userModelCstom[0].summery ?? "",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily: "PatrickHand",
                                fontSize: 20,
                                color: Colors.black)),
                      ],
                    )),
                  ),
                ),
              ),
              onTap: () => {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => posts()),
                  )
                },
              },
            ),
            InkWell(
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    color: Color(0xFFF3C7D7),
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          blogController.userModelCstom[1].heading ?? "",
                          style: const TextStyle(
                            fontFamily: "PatrickHand",
                            fontSize: 50,
                            color: Colors.black26,
                          ),
                        ),
                        Image.network(
                          blogController.userModelCstom[1].coverImage ?? "",
                          height: 70,
                          fit: BoxFit.scaleDown,
                          errorBuilder: (context, error, stackTrace) {
                            return SizedBox();
                          },
                        ),
                        Text(blogController.userModelCstom[1].summery ?? "",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily: "PatrickHand",
                                fontSize: 20,
                                color: Colors.black)),
                      ],
                    )),
                  ),
                ),
              ),
              onTap: () => {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  posts()),
                  )
                },
              },
            ),
            InkWell(
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    color: const Color(0xFFF3C7D7),
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          blogController.userModelCstom[2].heading ?? "",
                          style: const TextStyle(
                            fontFamily: "PatrickHand",
                            fontSize: 50,
                            color: Colors.black26,
                          ),
                        ),
                        Image.network(
                          blogController.userModelCstom[2].coverImage ?? "",
                          height: 70,
                          fit: BoxFit.scaleDown,
                          errorBuilder: (context, error, stackTrace) {
                            return SizedBox();
                          },
                        ),
                        Text(
                          blogController.userModelCstom[2].summery ?? "",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: "PatrickHand",
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
              onTap: () => {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => posts()),
                  )
                },
              },
            ),
          ],
        ),
      ),
    );
  }
}
