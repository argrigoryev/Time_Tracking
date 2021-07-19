import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'interstitialAd.dart';

final AdListener listener = AdListener(
  // Called when an ad is successfully received.
  onAdLoaded: (Ad ad) => interstitialAd.show(),
  // Called when an ad request failed.
  onAdFailedToLoad: (Ad ad, LoadAdError error) => ad.dispose(),
  // Called when an ad removes an overlay that covers the screen.
  onAdClosed: (Ad ad) => ad.dispose(),
);