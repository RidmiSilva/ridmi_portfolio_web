import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ridmi_portfolio_web/posts.dart';


class blog extends StatelessWidget {


  const blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8EEF8),
        title: const Text('My blog',
          style: TextStyle(
              fontFamily: "DancingScript",
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF413D3D)
          ),
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
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              color: Color(0xFFF3C7D7),
            ),
            onTap: () =>{{Navigator.push(context, MaterialPageRoute(builder: (context) => posts()),)},},
          ),
          InkWell(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              color: Color(0xFFF3C7D7),
            ),
            onTap: () =>{{Navigator.push(context, MaterialPageRoute(builder: (context) => posts()),)},},
          ),
          InkWell(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              color: Color(0xFFF3C7D7),
            ),
            onTap: () =>{{Navigator.push(context, MaterialPageRoute(builder: (context) => posts()),)},},
          ),
        ],
      ),
    );
  }

}

