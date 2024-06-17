import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color_const.dart';
import 'package:flutter_application_1/constant/dimen.dart';
import 'package:flutter_application_1/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:flutter_application_1/widgets/text_label.dart';

class DashboardRecentTransGridItem extends StatelessWidget {
  const DashboardRecentTransGridItem(
      {super.key, required this.dashboardGridModel});

  final DashboardGridModel dashboardGridModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              child: Image.asset(
                dashboardGridModel.iconPath,
                // height: Dimension.imageXSmall,
                // width: Dimension.imageXSmall,
              ),
            ),
          ],
        ),
        TextLabel(
          label: dashboardGridModel.label,
          fontSize: Dimensions.textSizeXSmall,
          labelColor: blackColor,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}
