import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mock_data/pages/details/details_controller.dart';
import 'package:mock_data/shared/widgets/app_divider.dart';
import 'package:mock_data/themes/app_colors.dart';
import 'package:mock_data/themes/app_sized_box.dart';
import 'package:mock_data/themes/app_text_style.dart';
import 'package:mock_data/utils/formatters.dart';

class DetailsPage extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    var formatter = Formatters();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Detalhe Mensalidade',
          style: AppTextStyle.titleHome(color: AppColors.white),
        ),
        backgroundColor: AppColors.grayPrincipal,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Detalhe da Mensalidade',
              style: AppTextStyle.header(color: AppColors.dodgerBlue),
            ),
            AppSizedBox.height_2,
            Text(
              'Você deve: ${formatter.formatMoney(controller.mensalidade?.saldo ?? 0)}',
              style: AppTextStyle.header(color: AppColors.red_error),
            ),
            AppSizedBox.height_16,
            Text(
              'Com Vencimento: ${formatter.formatDate(controller.mensalidade?.vencimento ?? DateTime.now().toString())}',
              style: AppTextStyle.h6(color: AppColors.red_error),
            ),
          ],
        ),
      ),
    );
  }
}
