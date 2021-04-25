import 'dart:async';

import 'package:flutter_demo/app/app.dart';
import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';

/// A service which will be used to handle the basic operations in the
/// applicaiton. This will be used to seperate the UI related work like
/// controllers, permission and etc.
class CommonService extends GetxService {
  /// Internet connection change subscription
  StreamSubscription? _streamSubscription;

  Future<CommonService> init() async {
    onInit();
    return this;
  }

  @override
  void onInit() {
    _checkForInternetConnection();
    super.onInit();
  }

  /// Start the internet check subscription
  void _checkForInternetConnection() {
    _streamSubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result != ConnectivityResult.none) {
        Utility.closeDialog();
      } else {
        Utility.showNoInternetDialog();
      }
    });
  }

  @override
  void onClose() {
    _streamSubscription?.cancel();
    super.onClose();
  }
}
