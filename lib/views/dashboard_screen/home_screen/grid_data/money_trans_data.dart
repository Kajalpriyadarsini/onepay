
import 'package:flutter_application_1/constant/image_const.dart';
import 'package:flutter_application_1/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:flutter_application_1/route/app_routes.dart';

class MoneyTransItemDatas {
  List<DashboardGridModel> moneyTransItemList = [
    DashboardGridModel(
      label: 'Scan QR Code',
      iconPath: ImageConstant.scannerImage,
      pageToNavigate: AppRoutes.dashboardScreen,
    ),
    DashboardGridModel(
      label: 'Send to Contact',
      iconPath: ImageConstant.addUserImage,
      pageToNavigate: AppRoutes.dashboardScreen,
      badgeCount: 0,
    ),
    DashboardGridModel(
      label: 'Send To Bank',
      iconPath: ImageConstant.instituteImage,
      pageToNavigate: '',
      badgeCount: 0,
    ),
    DashboardGridModel(
      label: 'Self Transfer',
      iconPath: ImageConstant.swapImage,
      pageToNavigate: '',
      badgeCount: 0,
    ),
    // DashboardGridModel(
    //   label: 'Collect Fee',
    //   iconPath: ImageConstant.instituteImage,
    //   pageToNavigate: '',
    //   badgeCount: 0,
    // ),
    // DashboardGridModel(
    //   label: 'Approvals',
    //   iconPath: ImageConstant.swapImage,
    //   pageToNavigate: '',
    //   badgeCount: 0,
    // ),
  ];
}
