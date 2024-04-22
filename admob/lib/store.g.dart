// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AdMobStore on _AdMobStore, Store {
  Computed<String>? _$getBannerAdUnitIdComputed;

  @override
  String get getBannerAdUnitId => (_$getBannerAdUnitIdComputed ??=
          Computed<String>(() => super.getBannerAdUnitId,
              name: '_AdMobStore.getBannerAdUnitId'))
      .value;
  Computed<String>? _$getInterstitialAdUnitIdComputed;

  @override
  String get getInterstitialAdUnitId => (_$getInterstitialAdUnitIdComputed ??=
          Computed<String>(() => super.getInterstitialAdUnitId,
              name: '_AdMobStore.getInterstitialAdUnitId'))
      .value;
  Computed<String>? _$getRewardAdUnitIdComputed;

  @override
  String get getRewardAdUnitId => (_$getRewardAdUnitIdComputed ??=
          Computed<String>(() => super.getRewardAdUnitId,
              name: '_AdMobStore.getRewardAdUnitId'))
      .value;

  late final _$bannerAdAtom =
      Atom(name: '_AdMobStore.bannerAd', context: context);

  @override
  BannerAd? get bannerAd {
    _$bannerAdAtom.reportRead();
    return super.bannerAd;
  }

  @override
  set bannerAd(BannerAd? value) {
    _$bannerAdAtom.reportWrite(value, super.bannerAd, () {
      super.bannerAd = value;
    });
  }

  late final _$interstitialAdAtom =
      Atom(name: '_AdMobStore.interstitialAd', context: context);

  @override
  InterstitialAd? get interstitialAd {
    _$interstitialAdAtom.reportRead();
    return super.interstitialAd;
  }

  @override
  set interstitialAd(InterstitialAd? value) {
    _$interstitialAdAtom.reportWrite(value, super.interstitialAd, () {
      super.interstitialAd = value;
    });
  }

  late final _$rewardedAdAtom =
      Atom(name: '_AdMobStore.rewardedAd', context: context);

  @override
  RewardedAd? get rewardedAd {
    _$rewardedAdAtom.reportRead();
    return super.rewardedAd;
  }

  @override
  set rewardedAd(RewardedAd? value) {
    _$rewardedAdAtom.reportWrite(value, super.rewardedAd, () {
      super.rewardedAd = value;
    });
  }

  late final _$isPlatformCompliantAtom =
      Atom(name: '_AdMobStore.isPlatformCompliant', context: context);

  @override
  bool get isPlatformCompliant {
    _$isPlatformCompliantAtom.reportRead();
    return super.isPlatformCompliant;
  }

  @override
  set isPlatformCompliant(bool value) {
    _$isPlatformCompliantAtom.reportWrite(value, super.isPlatformCompliant, () {
      super.isPlatformCompliant = value;
    });
  }

  late final _$isBannerAdLoadedAtom =
      Atom(name: '_AdMobStore.isBannerAdLoaded', context: context);

  @override
  bool get isBannerAdLoaded {
    _$isBannerAdLoadedAtom.reportRead();
    return super.isBannerAdLoaded;
  }

  @override
  set isBannerAdLoaded(bool value) {
    _$isBannerAdLoadedAtom.reportWrite(value, super.isBannerAdLoaded, () {
      super.isBannerAdLoaded = value;
    });
  }

  late final _$isInterstitialAdLoadedAtom =
      Atom(name: '_AdMobStore.isInterstitialAdLoaded', context: context);

  @override
  bool get isInterstitialAdLoaded {
    _$isInterstitialAdLoadedAtom.reportRead();
    return super.isInterstitialAdLoaded;
  }

  @override
  set isInterstitialAdLoaded(bool value) {
    _$isInterstitialAdLoadedAtom
        .reportWrite(value, super.isInterstitialAdLoaded, () {
      super.isInterstitialAdLoaded = value;
    });
  }

  late final _$isRewardAdLoadedAtom =
      Atom(name: '_AdMobStore.isRewardAdLoaded', context: context);

  @override
  bool get isRewardAdLoaded {
    _$isRewardAdLoadedAtom.reportRead();
    return super.isRewardAdLoaded;
  }

  @override
  set isRewardAdLoaded(bool value) {
    _$isRewardAdLoadedAtom.reportWrite(value, super.isRewardAdLoaded, () {
      super.isRewardAdLoaded = value;
    });
  }

  late final _$loadBannerAsyncAction =
      AsyncAction('_AdMobStore.loadBanner', context: context);

  @override
  Future<void> loadBanner(AdSize size) {
    return _$loadBannerAsyncAction.run(() => super.loadBanner(size));
  }

  late final _$_AdMobStoreActionController =
      ActionController(name: '_AdMobStore', context: context);

  @override
  BannerAd _buildBannerAd(AdSize size) {
    final _$actionInfo = _$_AdMobStoreActionController.startAction(
        name: '_AdMobStore._buildBannerAd');
    try {
      return super._buildBannerAd(size);
    } finally {
      _$_AdMobStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadInterstitialAd(void Function(AdWithoutView) onAdDismissed) {
    final _$actionInfo = _$_AdMobStoreActionController.startAction(
        name: '_AdMobStore.loadInterstitialAd');
    try {
      return super.loadInterstitialAd(onAdDismissed);
    } finally {
      _$_AdMobStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadRewardedAd(void Function(AdWithoutView) onAdDismissed) {
    final _$actionInfo = _$_AdMobStoreActionController.startAction(
        name: '_AdMobStore.loadRewardedAd');
    try {
      return super.loadRewardedAd(onAdDismissed);
    } finally {
      _$_AdMobStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setBannerAdLoaded(bool loaded) {
    final _$actionInfo = _$_AdMobStoreActionController.startAction(
        name: '_AdMobStore._setBannerAdLoaded');
    try {
      return super._setBannerAdLoaded(loaded);
    } finally {
      _$_AdMobStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setInterstitialAdLoaded(bool loaded) {
    final _$actionInfo = _$_AdMobStoreActionController.startAction(
        name: '_AdMobStore._setInterstitialAdLoaded');
    try {
      return super._setInterstitialAdLoaded(loaded);
    } finally {
      _$_AdMobStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setRewardVideoAdLoaded(bool loaded) {
    final _$actionInfo = _$_AdMobStoreActionController.startAction(
        name: '_AdMobStore._setRewardVideoAdLoaded');
    try {
      return super._setRewardVideoAdLoaded(loaded);
    } finally {
      _$_AdMobStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setLoaded(AdMobType type, bool loaded, {LoadAdError? errorMessage}) {
    final _$actionInfo = _$_AdMobStoreActionController.startAction(
        name: '_AdMobStore._setLoaded');
    try {
      return super._setLoaded(type, loaded, errorMessage: errorMessage);
    } finally {
      _$_AdMobStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
bannerAd: ${bannerAd},
interstitialAd: ${interstitialAd},
rewardedAd: ${rewardedAd},
isPlatformCompliant: ${isPlatformCompliant},
isBannerAdLoaded: ${isBannerAdLoaded},
isInterstitialAdLoaded: ${isInterstitialAdLoaded},
isRewardAdLoaded: ${isRewardAdLoaded},
getBannerAdUnitId: ${getBannerAdUnitId},
getInterstitialAdUnitId: ${getInterstitialAdUnitId},
getRewardAdUnitId: ${getRewardAdUnitId}
    ''';
  }
}
