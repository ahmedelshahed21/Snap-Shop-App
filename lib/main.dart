import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/app/snap_shop.dart';
import 'package:snap_shop/core/utils/observer.dart';
import 'package:snap_shop/core/utils/service_locator.dart';
void main() {
  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
  runApp(const SnapShop());
}


