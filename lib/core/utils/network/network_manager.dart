import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../popups/loaders.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<dynamic> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((event) {
      if (event is ConnectivityResult) {
        _updateConnectionStatus(event as ConnectivityResult);
      } else if (event.isNotEmpty) {
        _updateConnectionStatus(event.first); // Handle the first result
      }
    });
    _initConnection();
  }

  Future<void> _initConnection() async {
    try {
      final result = await _connectivity.checkConnectivity();
      _updateConnectionStatus(result.first);
    } on PlatformException catch (_) {}
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;

    if (result == ConnectivityResult.none) {
      Loaders.warningSnackbar(title: 'No Internet Connection');
    }
  }

  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result.isNotEmpty && result.first != ConnectivityResult.none;
    } on PlatformException catch (_) {
      return false;
    }
  }

  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }

  ConnectivityResult get currentStatus => _connectionStatus.value;
}
