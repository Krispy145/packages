// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CRUDReviewStore<T, Q> on _CRUDReviewStore<T, Q>, Store {
  late final _$currentReviewAtom =
      Atom(name: '_CRUDReviewStore.currentReview', context: context);

  @override
  ReviewModel? get currentReview {
    _$currentReviewAtom.reportRead();
    return super.currentReview;
  }

  @override
  set currentReview(ReviewModel? value) {
    _$currentReviewAtom.reportWrite(value, super.currentReview, () {
      super.currentReview = value;
    });
  }

  @override
  String toString() {
    return '''
currentReview: ${currentReview}
    ''';
  }
}
