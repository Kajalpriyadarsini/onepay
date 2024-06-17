import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color_const.dart';
import 'package:flutter_application_1/constant/dimen.dart';
import 'package:flutter_application_1/model/offer/offer_grid_model.dart';
import 'package:flutter_application_1/widgets/text_label.dart';


class OfferCoupenGridItem extends StatelessWidget {
  const OfferCoupenGridItem({super.key, required this.offerGridModel});

  final OffersGridModel offerGridModel;

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(Dimensions.paddingSmall),
                decoration: BoxDecoration(
                  color: scanQrColor1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  offerGridModel.iconPath,
                  height: Dimensions.imageXSmall,
                  width: Dimensions.imageXSmall,
                  color: blackColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextLabel(
                    labelColor: blackColor,
                    label: offerGridModel.label,
                    fontSize: Dimensions.textSizeSmall,
                    textAlign: TextAlign.start,
                  ),
                  TextLabel(
                    labelColor: blackColor,
                    label: offerGridModel.title,
                    fontSize: Dimensions.textSizeSmall,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w600,
                  ),
                  TextLabel(
                    labelColor: blackColor,
                    label: offerGridModel.subtitle,
                    fontSize: Dimensions.textSizeSmall,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Icon(Icons.chevron_right_outlined)
            ],
          ),
        ),
      ],
    );
  }
}
