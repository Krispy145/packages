import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/helpers/extensions/build_context.dart";
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

  /// [PaginatedListBuilder] constructor.
  const PaginatedListBuilder({
    super.key,
    required this.store,
    this.header,
    required this.itemBuilder,
    this.loadStateBuilder,
    this.stackedWidgets,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Observer(
          builder: (context) => Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (header != null) ...[
                  header!,
                  Sizes.m.spacer(),
                ],
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: store.refresh,
                    child: ListView.builder(
                      itemCount: store.results.length,
                      controller: store.scrollController,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: itemBuilder,
                    ),
                  ),
                ),
              ],
            ),
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
                    loadedBuilder: (context) => const SizedBox.shrink(),
                    errorBuilder: (context) {
                      context.showSnackbar(
                        configuration: SnackbarConfiguration.error(
                          title: "Error Loading Results",
                        ),
                      );
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
}
