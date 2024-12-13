import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/widgets/load_state/states.dart";
import "package:utilities/widgets/load_state/store.dart";
import "package:widgets/messages/warning_message.dart";

abstract class BaseLoadStateBuilder extends StatelessWidget {
  final LoadStateStore store;

  const BaseLoadStateBuilder({super.key, required this.store});

  Widget buildInitialState(BuildContext context) => const SizedBox.shrink();
  Widget buildLoadingState(BuildContext context) => const Center(child: CircularProgressIndicator());
  Widget buildLoadedState(BuildContext context);
  Widget buildEmptyState(BuildContext context, String emptyMessage) => WarningMessage.empty(message: emptyMessage);
  Widget buildErrorState(BuildContext context, String errorMessage) => WarningMessage.error(message: errorMessage);
  Widget buildNoMoreToLoadState(BuildContext context) => buildLoadedState(context);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        switch (store.currentState) {
          case InitialLoadState():
            return buildInitialState(context);
          case LoadingLoadState():
            return buildLoadingState(context);
          case LoadedLoadState():
            return buildLoadedState(context);
          case EmptyLoadState(emptyMessage: final empty):
            return buildEmptyState(context, empty);
          case ErrorLoadState(errorMessage: final error):
            return buildErrorState(context, error);
          case NoMoreLoadState():
            return buildNoMoreToLoadState(context);
        }
      },
    );
  }
}
