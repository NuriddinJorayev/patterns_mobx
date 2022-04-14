import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:patterns_mobx/models/post_model.dart';
import 'package:patterns_mobx/services/functions/create_delete_add.dart';

part 'update_store.g.dart';

class UpdateSotre = _UpdateSotre with _$UpdateSotre;

abstract class _UpdateSotre with Store {
  @observable
  bool isloading = false;
  @observable
  var control1 = TextEditingController();
  @observable
  var control2 = TextEditingController();
  @observable
  Post? post;

  @action
  Update_post(BuildContext context) async {
    var text1 = control1.text.trim();
    var text2 = control2.text.trim();
    if (text1.isNotEmpty && text2.isNotEmpty) {
      isloading = true;
      post!.title = text1;
      post!.body = text2;
      await Create_delete_add_function.Update(post!);
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
}
