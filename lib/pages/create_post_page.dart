import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:patterns_mobx/models/post_model.dart';
import 'package:patterns_mobx/services/functions/create_delete_add.dart';
import 'package:patterns_mobx/services/http_server.dart';
import 'package:patterns_mobx/view_models/create_store.dart';
import 'package:patterns_mobx/widgets/text_field.dart';

class Create_post extends StatefulWidget {
  static final String id = "create_post";
  Create_post({
    Key? key,
  }) : super(key: key);

  @override
  State<Create_post> createState() => _Create_postState();
}

class _Create_postState extends State<Create_post> {
  Createstore store = Createstore();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Create Post"),
      ),
      body: Observer(
        builder: (context) => SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: h,
                width: w,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text_Field.Create_textFiled("Title", store.control1, 3),
                    Text_Field.Create_textFiled("Body", store.control2, 6),
                  ],
                ),
              ),
              store.isloading
                  ? Container(
                      height: h,
                      width: w,
                      color: Colors.black.withOpacity(.4),
                      child: Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : SizedBox.shrink()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          FocusScope.of(context).requestFocus(FocusNode());
          store.Create_post(context);
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
