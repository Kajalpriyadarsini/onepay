import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimen.dart';
import 'package:flutter_application_1/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:flutter_application_1/route/app_routes.dart';
import 'package:flutter_application_1/widgets/dashboard_grid_view/recentTrans_grid/recentTrans_grid_item.dart';


class DashboardGridRecentTransView extends StatefulWidget {
  const DashboardGridRecentTransView(
      {super.key, required this.dashboardGridModelList});

  final List<DashboardGridModel> dashboardGridModelList;

  @override
  State<DashboardGridRecentTransView> createState() =>
      _DashboardGridRecentTransViewState();
}

class _DashboardGridRecentTransViewState
    extends State<DashboardGridRecentTransView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: Dimensions.gapXLarge,
          crossAxisSpacing: 0.0),
      itemBuilder: (context, index) {
        DashboardGridModel dashboardGridModel =
            widget.dashboardGridModelList[index];
        return InkWell(
          child: DashboardRecentTransGridItem(
            dashboardGridModel: dashboardGridModel,
          ),
          onTap: () =>
              {Navigator.pushNamed(context, AppRoutes.dashboardScreen)},
        );
      },
      itemCount: widget.dashboardGridModelList.length,
      shrinkWrap: true,
      primary: false,
    );
  }
}
