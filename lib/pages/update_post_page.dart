import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:patterns_mobx/models/post_model.dart';
import 'package:patterns_mobx/services/functions/create_delete_add.dart';
import 'package:patterns_mobx/services/http_server.dart';
import 'package:patterns_mobx/view_models/update_store.dart';
import 'package:patterns_mobx/widgets/text_field.dart';

class Update_post extends StatefulWidget {
  Post post;
  static final String id = "update_post";
  Update_post({Key? key, required this.post}) : super(key: key);

  @override
  State<Update_post> createState() => _Update_postState();
}

class _Update_postState extends State<Update_post> {
  UpdateSotre store = UpdateSotre();

  @override
  void initState() {
    store.post = widget.post;
    store.control1.text = widget.post.title;
    store.control2.text = widget.post.body;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Update Post"),
      ),
      body: SingleChildScrollView(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          FocusScope.of(context).requestFocus(FocusNode());
          store.Update_post(context);
        },
        child: Icon(Icons.update),
      ),
    );
  }
}
