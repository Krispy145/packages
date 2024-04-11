import 'package:admob/store.dart';
import 'package:admob/utils/loggers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/widgets/conditional.dart';

/// A Inkwell Widget that shows an ad when pressed.
class ShowAdButton extends StatefulWidget {
  /// The [AdMobStore] to use for loading the ad.
  final AdMobStore store;

  /// The [child] to use for the widget.
  final Widget child;

  /// function to call when the ad is dismissed.
  final void Function(AdWithoutView)? onAdDismissed;

  /// condition to determine if the ad is a reward ad or not.
  final bool isRewardAd;

  /// function to call when the user has earned a reward.
  final void Function(AdWithoutView rewardedAd, RewardItem reward)? onUserEarnedReward;

  /// Named constructor for an interstitial ad.
  const ShowAdButton.interstitial({
    super.key,
    required this.store,
    required this.child,
    this.onAdDismissed,
  })  : isRewardAd = false,
        onUserEarnedReward = null;

  /// Named constructor for a rewarded ad.
  const ShowAdButton.rewarded({
    super.key,
    required this.store,
    required this.child,
    required this.onUserEarnedReward,
    this.onAdDismissed,
  }) : isRewardAd = true;
  @override
  State<ShowAdButton> createState() => _ShowAdButtonState();
}

class _ShowAdButtonState extends State<ShowAdButton> {
  @override
  void initState() {
    super.initState();
    initAd();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    initAd();
  }

  Future<void> initAd() async {
    widget.isRewardAd
        ? widget.store.loadRewardedAd(widget.onAdDismissed ?? (_) {})
        : widget.store.loadInterstitialAd(
            widget.onAdDismissed ?? (_) {},
          );
  }

  @override
  void dispose() {
    super.dispose();
    widget.isRewardAd ? widget.store.rewardedAd?.dispose() : widget.store.interstitialAd?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConditionalWidget(
      condition: widget.store.isPlatformCompliant,
      child: Observer(
        builder: (context) => _buildAdGesture(),
      ),
    );
  }

  Widget _buildAdGesture() => ConditionalWidget(
        condition: widget.isRewardAd,
        elseChild: ConditionalWidget(
          condition: widget.store.isInterstitialAdLoaded,
          child: InkWell(
            onTap: () {
              AppLogger.print(
                "Interstitial child pressed",
                [AdMobLoggers.adMob],
              );
              widget.store.interstitialAd!.show();
            },
            child: widget.child,
          ),
        ),
        child: ConditionalWidget(
          condition: widget.store.isRewardAdLoaded,
          child: InkWell(
            onTap: () {
              AppLogger.print(
                "Rewarded child pressed",
                [AdMobLoggers.adMob],
              );
              widget.store.rewardedAd?.show(onUserEarnedReward: widget.onUserEarnedReward!);
            },
            child: widget.child,
          ),
        ),
      );
}
