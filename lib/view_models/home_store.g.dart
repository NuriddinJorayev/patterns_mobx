// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$futureAtom = Atom(name: '_HomeStore.future');

  @override
  Future<List<Post>>? get future {
    _$futureAtom.reportRead();
    return super.future;
  }

  @override
  set future(Future<List<Post>>? value) {
    _$futureAtom.reportWrite(value, super.future, () {
      super.future = value;
    });
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  dynamic initialize_future() {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.initialize_future');
    try {
      return super.initialize_future();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
future: ${future}
    ''';
  }
}
