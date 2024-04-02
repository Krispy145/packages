import 'package:admob/ads/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:utilities/widgets/conditional.dart';

///A widget that displays a banner with a collection of named constructors.
class BannerAdWidget extends StatefulWidget {
  ///The [AdMobStore] to use for loading the banner.
  final AdMobStore store;

  ///The [key] to use for the widget.
  final AdSize adSize;

  ///The [size] to use for the widget.
  final Size size;

  ///Whether the banner is inline or not.
  final bool isInline;

  ///The standard banner (320x50) [adSize].
  const BannerAdWidget.banner(this.store, {super.key})
      : adSize = AdSize.banner,
        size = const Size(320, 50),
        isInline = false;

  ///The full banner (468x60) [adSize].
  const BannerAdWidget.fullBanner(this.store, {super.key})
      : adSize = AdSize.fullBanner,
        size = const Size(468, 60),
        isInline = false;

  ///The large banner (320x100) [adSize].
  const BannerAdWidget.largeBanner(this.store, {super.key})
      : adSize = AdSize.largeBanner,
        size = const Size(320, 100),
        isInline = false;

  ///The medium rectangle (300x250) [adSize].
  const BannerAdWidget.mediumRectangle(this.store, {super.key})
      : adSize = AdSize.mediumRectangle,
        size = const Size(300, 250),
        isInline = false;

  ///The leaderboard (728x90) [adSize].
  const BannerAdWidget.leaderboard(this.store, {super.key})
      : adSize = AdSize.leaderboard,
        size = const Size(728, 90),
        isInline = false;

  ///A dynamically [adSize]d banner that matches its parent's width and expands/contracts its height to match the ad's content after loading completes.
  const BannerAdWidget.fluid(
    this.store, {
    super.key,
    required this.size,
  })  : adSize = AdSize.fluid,
        isInline = false;

  //TODO: Needs further investigation into anchored and inline ads as well as AdWidget building causing Observer errors
  // ///The [size] returned will have an aspect ratio similar to AdSize, suitable for anchoring near the top or bottom of your app.
  // const BannerAdWidget.anchoredAdaptive(this.store, {required this.width, Key? key})
  //     : adSize = null,
  //       isInline = false,
  //       super(key: key);

  // ///This ad [adSize] allows Google servers to choose an optimal ad [size] with a height less than or equal to the height of the screen in the current orientation.
  // const BannerAdWidget.inlineAdaptive(this.store, {required this.width, Key? key})
  //     : size = null,
  //       isInline = true,
  //       super(key: key);

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  @override
  void initState() {
    super.initState();
    _loadBanner();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadBanner();
  }

  Future<void> _loadBanner() async {
    await widget.store.loadBanner(widget.adSize);
  }

  @override
  void dispose() {
    super.dispose();
    widget.store.bannerAd?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConditionalWidget(
      condition:
          widget.store.bannerAd != null && widget.store.isPlatformCompliant,
      child: Observer(
        builder: (context) {
          return SizedBox(
            width: widget.size.width,
            height: widget.size.height,
            child: AdWidget(ad: widget.store.bannerAd!),
          );
        },
      ),
    );
  }
}
