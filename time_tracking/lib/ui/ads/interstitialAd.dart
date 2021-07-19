import 'package:google_mobile_ads/google_mobile_ads.dart';

import './listener.dart';
import './adHelper.dart';

final InterstitialAd interstitialAd = InterstitialAd(
  adUnitId: AdHelper().getTestAdUnitId(),
  request: AdRequest(),
  listener: listener,
);