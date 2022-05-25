import 'package:flutter_tutorial/pages/page_home.dart';
import 'package:flutter_tutorial/pages/page_show_modal_bottom_sheet.dart';
import 'package:flutter_tutorial/pages/page_unknown.dart';
import 'package:flutter_tutorial/route/route_name.dart';
import 'package:get/get.dart';

class AppRoute{
  static final List<GetPage> getPageList = [
    GetPage(name: RouteName.pageShowModalBottomSheet, page: ()=>ShowModalBottomSheetPage()),
    GetPage(name: RouteName.pageUnknown, page: ()=>UnknownPage()),
    GetPage(name: RouteName.pageHome, page: ()=>HomePage()),
  ];

  static const String initialRoute = RouteName.pageHome;
  static final GetPage unknownRoute = GetPage(name: RouteName.pageUnknown, page: ()=>UnknownPage());
}