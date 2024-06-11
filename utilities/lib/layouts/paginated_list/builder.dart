import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/layouts/components/build_grid_view.dart";
import "package:utilities/layouts/components/build_list_view.dart";
import "package:utilities/layouts/components/types.dart";
import "package:utilities/layouts/paginated_list/store.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/snackbar/configuration.dart";
import "package:utilities/widgets/load_state/builder.dart";

class PaginatedListBuilder<T> extends StatelessWidget {
  final PaginatedListStore<T> store;
  final Widget? header;
  final Widget? Function(BuildContext, int) itemBuilder;
  final LoadStateBuilder? loadStateBuilder;
  final List<Widget>? stackedWidgets;
  final EdgeInsets? padding;
  final bool canRefresh;
  final ListViewType viewType;
  final SliverGridDelegate? gridDelegate;
  final bool slivers;

  /// [PaginatedListBuilder] constructor.
  PaginatedListBuilder.listView({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    this.loadStateBuilder,
    this.stackedWidgets,
    this.padding,
    this.canRefresh = true,
    this.slivers = false,
  })  : assert(!((canRefresh == true || (stackedWidgets?.isNotEmpty ?? false)) && slivers), "Cannot have refresh or stacked widgets and use slivers"),
        viewType = ListViewType.listView,
        gridDelegate = null;

  /// [PaginatedListBuilder] constructor.
  PaginatedListBuilder.gridView({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    required this.gridDelegate,
    this.loadStateBuilder,
    this.stackedWidgets,
    this.padding,
    this.canRefresh = true,
    this.slivers = false,
  })  : assert(!((canRefresh == true || (stackedWidgets?.isNotEmpty ?? false)) && slivers), "Cannot have refresh or stacked widgets and use slivers"),
        viewType = ListViewType.gridView;

  @override
  Widget build(BuildContext context) {
    if (slivers) return _buildView();
    return Stack(
      children: [
        Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (header != null) ...[
                header!,
                Sizes.m.spacer(),
              ],
              Expanded(
                child: _buildResults(),
              ),
            ],
          ),
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: loadStateBuilder ??
                  LoadStateBuilder(
                    viewStore: store,
                    emptyBuilder: (context) {
                      _showSnackBarRequestResponse(context);
                      return const Center(
                        child: Text("No results found"),
                      );
                    },
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
      switch (store.requestResponse) {
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
      return RefreshIndicator(
        onRefresh: store.refresh,
        child: _buildView(),
      );
    } else {
      return _buildView();
    }
  }

  Widget _buildView() {
    if (viewType == ListViewType.listView) {
      return Observer(
        builder: (context) {
          return BuildListView(
            itemCount: store.results.length,
            scrollController: store.scrollController,
            itemBuilder: itemBuilder,
            slivers: slivers,
          );
        },
      );
    } else {
      return Observer(
        builder: (context) {
          return BuildGridView(
            itemCount: store.results.length,
            scrollController: store.scrollController,
            itemBuilder: itemBuilder,
            gridDelegate: gridDelegate!,
            slivers: slivers,
          );
        },
      );
    }
  }
}
