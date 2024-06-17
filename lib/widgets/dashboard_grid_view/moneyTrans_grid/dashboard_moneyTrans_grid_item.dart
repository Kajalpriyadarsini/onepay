import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color_const.dart';
import 'package:flutter_application_1/constant/dimen.dart';
import 'package:flutter_application_1/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:flutter_application_1/utils/display_utils.dart';
import 'package:flutter_application_1/widgets/text_label.dart';


class DashboardMoneyBillGridItem extends StatelessWidget {
  const DashboardMoneyBillGridItem(
      {super.key, required this.dashboardGridModel});

  final DashboardGridModel dashboardGridModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          elevation: 10,
          color: moneyTransItemColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(Dimensions.paddingSmall),
                decoration: BoxDecoration(
                  color: scanQrColor1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  dashboardGridModel.iconPath,
                  height: Dimensions.imageXSmall,
                  width: Dimensions.imageXSmall,
                  color: blackColor,
                ),
              ),
              hGap(5),
              TextLabel(
                labelColor: blackColor,
                label: dashboardGridModel.label,
                fontSize: Dimensions.textSizeSmall,
              )
            ],
          ),
        ),
      ],
    );
  }
}
