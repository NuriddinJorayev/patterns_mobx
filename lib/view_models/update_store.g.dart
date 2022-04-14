// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UpdateSotre on _UpdateSotre, Store {
  final _$isloadingAtom = Atom(name: '_UpdateSotre.isloading');

  @override
  bool get isloading {
    _$isloadingAtom.reportRead();
    return super.isloading;
  }

  @override
  set isloading(bool value) {
    _$isloadingAtom.reportWrite(value, super.isloading, () {
      super.isloading = value;
    });
  }

  final _$control1Atom = Atom(name: '_UpdateSotre.control1');

  @override
  TextEditingController get control1 {
    _$control1Atom.reportRead();
    return super.control1;
  }

  @override
  set control1(TextEditingController value) {
    _$control1Atom.reportWrite(value, super.control1, () {
      super.control1 = value;
    });
  }

  final _$control2Atom = Atom(name: '_UpdateSotre.control2');

  @override
  TextEditingController get control2 {
    _$control2Atom.reportRead();
    return super.control2;
  }

  @override
  set control2(TextEditingController value) {
    _$control2Atom.reportWrite(value, super.control2, () {
      super.control2 = value;
    });
  }

  final _$postAtom = Atom(name: '_UpdateSotre.post');

  @override
  Post? get post {
    _$postAtom.reportRead();
    return super.post;
  }

  @override
  set post(Post? value) {
    _$postAtom.reportWrite(value, super.post, () {
      super.post = value;
    });
  }

  @override
  String toString() {
    return '''
isloading: ${isloading},
control1: ${control1},
control2: ${control2},
post: ${post}
    ''';
  }
}
