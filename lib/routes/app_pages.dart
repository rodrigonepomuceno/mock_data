import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mock_data/pages/details/datails_bind.dart';
import 'package:mock_data/pages/details/details_page.dart';
import 'package:mock_data/pages/home/home_bind.dart';
import 'package:mock_data/pages/home/home_page.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomePage(), bindings: [HomeBind()]),
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
        bindings: [DetailsBind()]),
  ];
}
