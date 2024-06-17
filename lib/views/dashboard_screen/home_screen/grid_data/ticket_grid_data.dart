

import 'package:flutter_application_1/constant/image_const.dart';
import 'package:flutter_application_1/model/dashboard/dashoard_moneyTrans_grid_model.dart';

class DashboardGridTicketdata {
  List<DashboardGridModel> ticketItemList = [
    DashboardGridModel(
      label: 'Movies',
      iconPath: ImageConstant.videoPlayImg,
      pageToNavigate: '',
      
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Trains',
      iconPath: ImageConstant.busImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Bus',
      iconPath: ImageConstant.busImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Flights',
      iconPath: ImageConstant.aeroplaneImage,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Cars',
      iconPath: ImageConstant.carImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
  ];
}
