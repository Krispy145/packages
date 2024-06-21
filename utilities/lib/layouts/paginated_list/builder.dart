import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/layouts/list/builder.dart";
import "package:utilities/layouts/paginated_list/store.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/snackbar/configuration.dart";
import "package:utilities/widgets/load_state/builder.dart";

class PaginatedListBuilder<T> extends ListBuilder<T> {
  final bool canRefresh;

  @override
  // ignore: overridden_fields
  final PaginatedListStore<T> store;

  /// [PaginatedListBuilder] constructor.
  PaginatedListBuilder.listView({
    super.key,
    this.canRefresh = true,
    required this.store,
    super.header,
    required super.itemBuilder,
    super.loadStateBuilder,
    super.stackedWidgets,
    super.padding,
    super.slivers = false,
  }) : super.listView(store: store);

  /// [PaginatedListBuilder] constructor.
  PaginatedListBuilder.gridView({
    super.key,
    required this.store,
    super.header,
    required super.itemBuilder,
    required super.gridDelegate,
    super.loadStateBuilder,
    super.stackedWidgets,
    super.padding,
    this.canRefresh = true,
    super.slivers = false,
  }) : super.gridView(store: store);

  @override
  Widget build(BuildContext context) {
    if (slivers) {
      return Observer(
        builder: (context) {
          return buildView(store.showLoadingSpinnerAtBottom);
        },
      );
    }
    return Stack(
      children: [
        Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (header != null) ...[header!, Sizes.m.spacer()],
              Expanded(child: _buildResults()),
            ],
          ),
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: loadStateBuilder ??
                  LoadStateBuilder(
                    viewStore: store,
                    emptyBuilder: (context) {
                      _showSnackBarRequestResponse(context);
                      return const Center(
                        child: Text("No results found"),
                      );
                    },
                    loadingBuilder: (context) => const SizedBox.shrink(),
                    loadedBuilder: (context) {
                      _showSnackBarRequestResponse(context);
                      return const SizedBox.shrink();
                    },
                    errorBuilder: (context) {
                      return IconButton(
                        icon: const Icon(Icons.refresh),
                        onPressed: store.refresh,
                      );
                    },
                  ),
            ),
          ),
        ),
        if (stackedWidgets != null) ...stackedWidgets!,
      ],
    );
  }

  void _showSnackBarRequestResponse(
    BuildContext context,
  ) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (store.requestResponse == null) return;
      switch (store.requestResponse!) {
        case RequestResponse.success:
        case RequestResponse.underReview:
        case RequestResponse.failure:
          break;
        case RequestResponse.denied:
          context.showSnackbar(
            configuration: SnackbarConfiguration.warning(
              title: "Request Denied",
            ),
          );
          break;
      }
    });
  }

  Widget _buildResults() {
    if (canRefresh && !kIsWeb) {
      return Observer(
        builder: (context) {
          return RefreshIndicator(
            onRefresh: store.refresh,
            child: buildView(store.showLoadingSpinnerAtBottom),
          );
        },
      );
    } else {
      return Observer(
        builder: (context) {
          return buildView(store.showLoadingSpinnerAtBottom);
        },
      );
    }
  }

  @override
  Widget buildView(bool isLoadingMore) => Observer(builder: (context) => super.buildView(isLoadingMore));
}
