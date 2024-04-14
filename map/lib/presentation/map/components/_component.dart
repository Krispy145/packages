import 'package:flutter/scheduler.dart';

class FlutterMapTickerProvider extends TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
