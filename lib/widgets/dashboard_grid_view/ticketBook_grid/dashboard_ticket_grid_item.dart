import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color_const.dart';
import 'package:flutter_application_1/constant/dimen.dart';
import 'package:flutter_application_1/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:flutter_application_1/widgets/text_label.dart';


class DashboardTicketGridItem extends StatelessWidget {
  const DashboardTicketGridItem({super.key, required this.dashboardGridModel});

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
            Container(
              padding: const EdgeInsets.all(Dimensions.paddingSmall),
              decoration: BoxDecoration(
                color: ticketBookColor,
                borderRadius:
                    BorderRadius.circular(Dimensions.cornerRadiusMedium),
              ),
              child: Image.asset(
                dashboardGridModel.iconPath,
                height: Dimensions.imageXSmall,
                width: Dimensions.imageXSmall,
                color: ticketIconcolor,
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
