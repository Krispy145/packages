import 'package:admob/ads/helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mobx/mobx.dart';
import 'package:universal_io/io.dart';
import 'package:utilities/logger/logger.dart';

part 'store.g.dart';

/// enum for the different types of ads.
enum AdMobType {
  /// reward ad type.
  reward,

  /// interstitial ad type.
  interstitial,

  /// banner ad type.
  banner;
}

/// A store for AdMob ads.
class AdMobStore = _AdMobStore with _$AdMobStore;

/// [_AdMobStore] is a MobX Store that is used to manage the state of the [AdMobStore].
abstract class _AdMobStore with Store {
  /// The banner ad unit id.
  final String? bannerAdUnitId;

  /// The interstitial ad unit id.
  final String? interstitialAdUnitId;

  /// The rewarded ad unit id.
  final String? rewardAdUnitId;

  /// The constructor for the [_AdMobStore].
  _AdMobStore({
    required this.bannerAdUnitId,
    required this.interstitialAdUnitId,
    required this.rewardAdUnitId,
  }) {
    _initMobileAds();
  }

  Future<void> _initMobileAds() async {
    if (isPlatformCompliant) await MobileAds.instance.initialize();
  }

  /// The [BannerAd] to use for the store.
  @observable
  BannerAd? bannerAd;

  /// The [InterstitialAd] to use for the store.
  @observable
  InterstitialAd? interstitialAd;

  /// The [RewardedAd] to use for the store.
  @observable
  RewardedAd? rewardedAd;

  /// Whether the platform is compliant for ads or not.
  @observable
  bool isPlatformCompliant = Platform.isAndroid || Platform.isIOS;

  /// bannerAdId getter.
  @computed
  String get getBannerAdUnitId => bannerAdUnitId ?? AdHelper.bannerAdUnitId;

  /// interstitialAdId getter.
  @computed
  String get getInterstitialAdUnitId => interstitialAdUnitId ?? AdHelper.interstitialAdUnitId;

  /// rewardAdId getter.
  @computed
  String get getRewardAdUnitId => rewardAdUnitId ?? AdHelper.rewardedAdUnitId;

  /// Whether the banner ad is loaded or not.
  @observable
  bool isBannerAdLoaded = false;

  /// Whether the interstitial ad is loaded or not.
  @observable
  bool isInterstitialAdLoaded = false;

  /// Whether the reward ad is loaded or not.
  @observable
  bool isRewardAdLoaded = false;

  /// Loads the banner ad.
  @action
  Future<void> loadBanner(AdSize size) async {
    if (isPlatformCompliant) {
      bannerAd = _buildBannerAd(size);
      await bannerAd?.load();
    }
  }

  //TODO: Needs further investigation into anchored and inline ads as well as AdWidget building causing Observer errors
  // @action
  // Future<void> loadAdaptiveBanner(int width, bool isInline) async {
  //   if (isPlatformCompliant) {
  //     final AdSize? size = isInline ? AdSize.getCurrentOrientationInlineAdaptiveBannerAdSize(width) : await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(width);
  //     if (size != null) {
  //       bannerAd = _buildBannerAd(size);
  //       await bannerAd?.load();
  //     } else {
  //       _setLoaded(AdMobType.banner, false);
  //     }
  //   }
  // }

  /// Builds the banner ad.
  @action
  BannerAd _buildBannerAd(AdSize size) {
    return BannerAd(
      adUnitId: getBannerAdUnitId,
      request: const AdRequest(),
      size: size,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          bannerAd = ad as BannerAd;
          _setLoaded(AdMobType.banner, true);
        },
        onAdFailedToLoad: (ad, err) {
          _setLoaded(AdMobType.banner, false, errorMessage: err);
          ad.dispose();
        },
      ),
    );
  }

  /// Loads the interstitial ad.
  @action
  void loadInterstitialAd(void Function(AdWithoutView) onAdDismissed) {
    if (isPlatformCompliant) {
      InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
              onAdDismissedFullScreenContent: (ad) {
                interstitialAd?.dispose();
                loadInterstitialAd(onAdDismissed);
                onAdDismissed(ad);
              },
            );
            interstitialAd = ad;
            _setLoaded(AdMobType.interstitial, true);
          },
          onAdFailedToLoad: (err) {
            _setLoaded(AdMobType.interstitial, false, errorMessage: err);
          },
        ),
      );
    }
  }

  /// Loads the rewarded ad.
  @action
  void loadRewardedAd(void Function(AdWithoutView) onAdDismissed) {
    if (isPlatformCompliant) {
      RewardedAd.load(
        adUnitId: AdHelper.rewardedAdUnitId,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
              onAdDismissedFullScreenContent: (ad) {
                rewardedAd?.dispose();
                loadRewardedAd(onAdDismissed);
                onAdDismissed(ad);
              },
            );
            rewardedAd = ad;
            _setLoaded(AdMobType.reward, true);
          },
          onAdFailedToLoad: (err) {
            _setLoaded(AdMobType.reward, false, errorMessage: err);
          },
        ),
      );
    }
  }

  @action
  void _setBannerAdLoaded(bool loaded) {
    isBannerAdLoaded = loaded;
    AppLogger.print(
      "isBannerAdLoaded: $isBannerAdLoaded",
      [PackageFeatures.adMob],
      type: isBannerAdLoaded ? LoggerType.confirmation : LoggerType.error,
    );
  }

  @action
  void _setInterstitialAdLoaded(bool loaded) {
    isInterstitialAdLoaded = loaded;
    AppLogger.print(
      "isInterstitialAdLoaded: $isInterstitialAdLoaded",
      [PackageFeatures.adMob],
      type: isInterstitialAdLoaded ? LoggerType.confirmation : LoggerType.error,
    );
  }

  @action
  void _setRewardVideoAdLoaded(bool loaded) {
    isRewardAdLoaded = loaded;
    AppLogger.print(
      "isRewardVideoAdLoaded: $isRewardAdLoaded",
      [PackageFeatures.adMob],
      type: isRewardAdLoaded ? LoggerType.confirmation : LoggerType.error,
    );
  }

  @action
  void _setLoaded(AdMobType type, bool loaded, {LoadAdError? errorMessage}) {
    switch (type) {
      case AdMobType.banner:
        _setBannerAdLoaded(loaded);
        break;
      case AdMobType.interstitial:
        _setInterstitialAdLoaded(loaded);
        break;
      case AdMobType.reward:
        _setRewardVideoAdLoaded(loaded);
        break;
    }
    if (!loaded && errorMessage != null) {
      AppLogger.print(
        "Error loading $type: ${errorMessage.code} -> ${errorMessage.message}",
        [PackageFeatures.adMob],
        type: LoggerType.error,
      );
    }
  }
}
