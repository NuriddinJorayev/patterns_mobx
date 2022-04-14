import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:patterns_mobx/models/post_model.dart';
import 'package:patterns_mobx/services/functions/create_delete_add.dart';
import 'package:patterns_mobx/services/http_server.dart';
part 'create_store.g.dart';

class Createstore = _Createstore with _$Createstore;

abstract class _Createstore with Store {
  @observable
  bool isloading = false;
  @observable
  var control1 = TextEditingController();
  @observable
  var control2 = TextEditingController();

  @action
  Create_post(BuildContext context) async {
    var text1 = control1.text.trim();
    var text2 = control2.text.trim();
    if (text1.isNotEmpty && text2.isNotEmpty) {
      isloading = true;

      var posts = await Rest_APi.GET_parsed_list(Rest_APi.API_GET);
      var id = random_id(posts);
      var new_post = Post(int.parse(id), text1, text2, int.parse(id));
      await Create_delete_add_function.Create(new_post);
      isloading = false;
      Navigator.pop(context, "new_post");
    } else {
      var message = (text1.isEmpty && text2.isEmpty)
          ? "Title and Body"
          : text1.isEmpty
              ? "Title"
              : "Body";
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            message + " are empty",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: .5),
          ),
          action: SnackBarAction(
            label: 'Exit',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      );
    }
  }

  String random_id(List<Post> posts) {
    const _chars = '1234567890';
    Random _rnd = Random();
    String s = '';
    for (var e in posts) {
      s = String.fromCharCodes(Iterable<int>.generate(
          10, (i) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
      if (s == e.id.toString()) {
        random_id(posts);
      }
    }
    return s;
  }
}
