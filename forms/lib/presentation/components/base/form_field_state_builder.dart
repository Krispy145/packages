// import "package:flutter/material.dart";
// import "package:forms/presentation/components/base/store.dart";
// import "package:nested/nested.dart";

// typedef WidgetWithChildBuilder = Widget Function(BuildContext context, Widget field);
// typedef TextWidgetWithChildBuilder = Widget Function(BuildContext context, String text, Widget field);

// /// [FormStateBuilder] is a widget that will be used to build the UI based on the load state.
// class FormStateBuilder<T> extends SingleChildStatelessWidget {
//   /// [viewStore] is an instance of [BaseFormFieldStore].
//   final BaseFormFieldStore<T> viewStore;

//   ///
//   final WidgetBuilder fieldBuilder;

//   /// [validBuilder] is the builder that will be used to build the UI when the load state is loaded.
//   final WidgetWithChildBuilder validBuilder;

//   /// [errorBuilder] is the builder that will be used to build the UI when the load state is error.
//   final TextWidgetWithChildBuilder errorBuilder;

//   // /// [loadingBuilder] is the builder that will be used to build the UI when the load state is loading.
//   // final WidgetWithChildBuilder? loadingBuilder;

//   /// [incompleteBuilder] is the builder that will be used to build the UI when the value is not empty, but is not complete.
//   final TextWidgetWithChildBuilder? incompleteBuilder;

//   /// [emptyBuilder] is the builder that will be used to build the UI when the load state is empty.
//   final WidgetWithChildBuilder? emptyBuilder;

//   /// [emptyBuilder] is the builder that will be used to build the UI when the load state is empty.
//   final TextWidgetWithChildBuilder? emptyRequiresBuilder;

//   final bool slivers;

//   /// [FormStateBuilder] constructor
//   const FormStateBuilder({
//     super.key,
//     required this.viewStore,
//     required this.errorBuilder,
//     this.emptyBuilder,
//     required this.fieldBuilder,
//     required this.validBuilder,
//     this.incompleteBuilder,
//     this.emptyRequiresBuilder,
//     required this.slivers,
//   });

//   Widget _defaultBuilder(BuildContext context) {
//     if (slivers) {
//       return const SliverToBoxAdapter(child: SizedBox.shrink());
//     }
//     return const SizedBox.shrink();
//   }

//   // Widget _defaultLoadingBuilder(BuildContext context) {
//   //   if (slivers) {
//   //     return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
//   //   }
//   //   return const Center(child: CircularProgressIndicator());
//   // }

//   /// {@template provider.consumer.constructor}
//   /// Consumes a [Provider<T>]
//   /// {@endtemplate}
//   // Consumer({
//   //   Key? key,
//   //   required this.builder,
//   //   Widget? child,
//   // }) : super(key: key, child: child);

//   /// {@template provider.consumer.builder}
//   /// Build a widget tree based on the value from a [Provider<T>].
//   ///
//   /// Must not be `null`.
//   /// {@endtemplate}
//   final Widget Function(
//     BuildContext context,
//     Widget? child,
//   ) builder;

//   @override
//   Widget buildWithChild(BuildContext context, Widget? child) {
//     return builder(
//       context,
//       child,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // return Observer(
//     //   builder: (context) {
//     //     switch (viewStore.state) {
//     //       case ValidFormFieldState():
//     //         return validBuilder(context);
//     //       case EmptyFormFieldState():
//     //         return emptyBuilder?.call(context);
//     //       case EmptyRequiresValueFormFieldState():
//     //           return emptyRequiresBuilder?.call() ?? errorBuilder(context)
//     //       case ErrorFormFieldState(error: final error):
//     //         return errorBuilder(context, error);
//     //     }
//     //   },
//     // );
//   }
// }
