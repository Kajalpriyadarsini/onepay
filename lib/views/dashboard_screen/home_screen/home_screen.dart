


import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color_const.dart';
import 'package:flutter_application_1/constant/dimen.dart';
import 'package:flutter_application_1/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:flutter_application_1/route/app_routes.dart';
import 'package:flutter_application_1/utils/display_utils.dart';
import 'package:flutter_application_1/views/dashboard_screen/home_screen/grid_data/dashboard_bill_data.dart';
import 'package:flutter_application_1/views/dashboard_screen/home_screen/grid_data/money_trans_data.dart';
import 'package:flutter_application_1/views/dashboard_screen/home_screen/grid_data/more_servise_griddata.dart';
import 'package:flutter_application_1/views/dashboard_screen/home_screen/grid_data/recentTrans_data.dart';
import 'package:flutter_application_1/views/dashboard_screen/home_screen/grid_data/ticket_grid_data.dart';
import 'package:flutter_application_1/widgets/dashboard_grid_view/moneyTrans_grid/dashboard_moneyTrans_grid_view.dart';
import 'package:flutter_application_1/widgets/dashboard_grid_view/moreServices_grid/dashboard_moreServices_grid_view.dart';
import 'package:flutter_application_1/widgets/dashboard_grid_view/recentTrans_grid/recentTrns_grid_view.dart';
import 'package:flutter_application_1/widgets/dashboard_grid_view/ticketBook_grid/dashbord_ticket_grid_view.dart';
import 'package:flutter_application_1/widgets/text_label.dart';

class HomeDashboardScreen extends StatefulWidget {
  const HomeDashboardScreen({super.key});

  @override
  State<HomeDashboardScreen> createState() => _HomeDashboardScreenState();
}

class _HomeDashboardScreenState extends State<HomeDashboardScreen> {
 
  final List<DashboardGridModel> workspaceList =
      MoneyTransItemDatas().moneyTransItemList;
  final List<DashboardGridModel> rechargeBillList =
      DashboardGridBilldata().myAppItemList;

  final List<DashboardGridModel> ticketbookList =
      DashboardGridTicketdata().ticketItemList;

  final List<DashboardGridModel> moreServicesList =
      DashboardGridMoreServicesdata().moreServicesItemList;

  final List<DashboardGridModel> recentTrnsList =
      DashboardRecentTransdata().recentTransItemList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          vGap(10),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimensions.paddingLarge,
              right: Dimensions.paddingLarge,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextLabel(
                    label: 'Money Transfer',
                    fontSize: Dimensions.textSizeNormal,
                    fontWeight: FontWeight.w800),
                Row(
                  children: [Text("More"), Icon(Icons.chevron_right)],
                )
              ],
            ),
          ),
          vGap(5),
          Padding(
            padding: const EdgeInsets.only(
              left: Dimensions.paddingXSmall,
              right: Dimensions.paddingXSmall,
            ),
            child: DashboardGridViewForMoneyBill(
                dashboardGridModelList: workspaceList),
          ),
          vGap(7),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimensions.paddingLarge,
              right: Dimensions.paddingLarge,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextLabel(
                  label: 'Recharege & Bill Payment',
                  fontSize: Dimensions.textSizeNormal,
                  fontWeight: FontWeight.w800,
                ),
                Row(
                  children: [Text("More"), Icon(Icons.chevron_right)],
                )
              ],
            ),
          ),
          vGap(7),
          Padding(
              padding: const EdgeInsets.only(
                left: Dimensions.paddingXSmall,
                right: Dimensions.paddingXSmall,
              ),
              child: DashboardGridViewForMoneyBill(
                  dashboardGridModelList: rechargeBillList)),
          vGap(10),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimensions.paddingLarge,
              right: Dimensions.paddingLarge,
            ),
            child: Row(
              children: [
                TextLabel(
                  label: 'Ticket Booking',
                  fontSize: Dimensions.textSizeNormal,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
          vGap(10),
          Padding(
            padding: const EdgeInsets.only(),
            child:
                DashboardGridTicketView(dashboardGridModelList: ticketbookList),
          ),
          vGap(12),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimensions.paddingLarge,
              right: Dimensions.paddingLarge,
            ),
            child: Row(
              children: [
                TextLabel(
                  label: 'More Services',
                  fontSize: Dimensions.textSizeNormal,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
          vGap(10),
          Padding(
            padding: const EdgeInsets.only(),
            child: DashboardGridMoreServiceView(
                dashboardGridModelList: moreServicesList),
          ),
          vGap(10),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimensions.paddingLarge,
              right: Dimensions.paddingLarge,
            ),
            child: Row(
              children: [
                TextLabel(
                  label: 'Recent Transactions',
                  fontSize: Dimensions.textSizeNormal,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
          vGap(10),
          Padding(
            padding: const EdgeInsets.only(),
            child: DashboardGridRecentTransView(
                dashboardGridModelList: recentTrnsList),
          ),
          vGap(18),
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 48),
            child: SizedBox(
              height: 55,
              width: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.dashboardScreen);
                },
                child: Text(
                  "Recieve Money",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                      fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: blueColor),
              ),
            ),
          ),
          vGap(60),
        ],
      ),
    );
  }
}

enum EnumBottomNavCategoryType { student, teacher, global }
